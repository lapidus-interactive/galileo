class ClaimsController < ApplicationController
  before_action :check_if_signed_in, only: [:show, :edit, :update, :destroy, :new, :create]
  before_action :find_claim, only: [:show, :edit, :update, :destroy]

  def index
      if (params[:filter]=="r")
        qry="claims.id in (SELECT claim_id FROM claim_reviews WHERE claim_reviews.review_sharing_mode=1)"
        @filter_msg="<select id='filter'><option value='claims'>All Claims</option><option value='?filter=r' selected>Claims with shared reviews</option><option value='?filter=u'>Claims you reviewed</option><option value='?filter=n'>Claims with no reviews yet</option></select>"+
                     "<script>$(function(){$('#filter').on('change',function(){{window.location=$(this).val();}return false;});});</script>"
      elsif (params[:filter]=="u")
        qry="claims.id in (SELECT claim_id FROM claim_reviews WHERE claim_reviews.user_id="+current_user.id.to_s+")"
        @filter_msg="<select id='filter'><option value='claims'>All Claims</option><option value='?filter=r'>Claims with shared reviews</option><option value='?filter=u' selected>Claims you reviewed</option><option value='?filter=n'>Claims with no reviews yet</option></select>"+
                     "<script>$(function(){$('#filter').on('change',function(){{window.location=$(this).val();}return false;});});</script>"
      elsif (params[:filter]=="n")
        qry="claims.id not in (SELECT claim_id FROM claim_reviews WHERE (claim_reviews.review_sharing_mode=1 OR claim_reviews.user_id="+current_user.id.to_s+"))"
        @filter_msg="<select id='filter'><option value='claims'>All Claims</option><option value='?filter=r'>Claims with shared reviews</option><option value='?filter=u'>Claims you reviewed</option><option value='?filter=n' selected>Claims with no reviews yet</option></select>"+
                     "<script>$(function(){$('#filter').on('change',function(){{window.location=$(this).val();}return false;});});</script>"
      elsif (params[:q].present?)
        @filter_msg ="<select id='filter'><option value='claims' selected>All Claims</option><option value='?filter=r'>Claims with shared reviews</option><option value='?filter=u'>Claims you reviewed</option><option value='?filter=n'>Claims with no reviews yet</option></select>"+
                     "<script>$(function(){$('#filter').on('change',function(){{window.location=$(this).val();}return false;});});</script>"
        qry="title like '%"+params[:q]+"%'"
      elsif (params[:url].present?)
        @filter_msg=""
        output=""
        preview = Thumbnail.new(params[:url])
        if !preview.blank?
          if !preview.title.nil? and !preview.description.nil?
            puts("\n\n\n"+preview.inspect+"\n\n\n")
            output='<br><a class="fragment" href="'+params[:url]+'" target=_blank>'
            if defined?(preview.images.first.src) then
                output=output+'  <img src ="'+preview.images.first.src.to_s+'" height=50 />'
            end
            output=output+"\n<h3>"+preview.title+"</h3><p class=\"text\">"+preview.description+"</p></a>"
          end
        end
        render json: output;
        return
      else
        @filter_msg ="<select id='filter'><option value='claims' selected>All Claims</option><option value='?filter=r'>Claims with shared reviews</option><option value='?filter=u'>Claims you reviewed</option><option value='?filter=n'>Claims with no reviews yet</option></select>"+
                     "<script>$(function(){$('#filter').on('change',function(){{window.location=$(this).val();}return false;});});</script>"
#        @claims = Claim.all.order("created_at DESC")
        tmp=Claim.all.order("created_at DESC")
        @total_count=tmp.count
        @pagy, @claims = pagy(tmp, items: 10)
        return
      end
      tmp=Claim.where(qry).order("created_at DESC")
      @total_count=tmp.count
      @pagy, @claims = pagy(tmp, items: 10)
  end

  def show
    @claims_msg=""
    @reviews_msg=""
    @warning_msg=""
    dependent_reviews=ClaimReview.where("claim_id = "+@claim.id.to_s).count("id")
    if (dependent_reviews>0)
      @warning_msg="Deleting this record will also delete "
      @warning_msg=@warning_msg+" "+dependent_reviews.to_s+" dependent "+pl(dependent_reviews,"review")+".\n"
    end
    @warning_msg=@warning_msg+"\nAre you sure you want to go ahead and delete this claim?"
  end

  def new
      @claim = current_user.claims.build
      @srcs = Src.all.map{ |c| [c.name, c.id]}
      @media = Medium.all.map{ |m| [m.name, m.id]}
  end

  def create
    @claim = current_user.claims.build(claim_params)

    if @claim.save
        redirect_to root_path
    else
        render 'new'
    end
  end

  def edit
  end

  def update
    if @claim.update(claim_params)
      redirect_to claim_path(@claim)
    else
      render 'edit'
    end
  end

  def destroy
    ClaimReview.where("claim_id = "+@claim.id.to_s).destroy_all
    @claim.destroy
    redirect_to root_path
  end

  private

    def pl(nmbr,wrd)
      if nmbr>1 then return wrd+"s" end
      return wrd
    end

    def claim_params
      params.require(:claim).permit(:id, :title, :medium_name, :src_name, :url, :description, :has_image, :has_video, :has_text)
    end

    def find_claim
      @claim = Claim.find(params[:id])
    end

    def check_if_signed_in
      if !user_signed_in?
        redirect_to "/"
        return
      end
    end

end
