class RemoveColumnsFromClaims < ActiveRecord::Migration[5.1]
  def change
    remove_column :claims, :name
    remove_column :claims, :src_id
    remove_column :claims, :img_old
    remove_column :claims, :img_forensic_discrepency
    remove_column :claims, :img_metadata_discrepency
    remove_column :claims, :img_logical_discrepency
    remove_column :claims, :vid_old
    remove_column :claims, :vid_forensic_discrepency
    remove_column :claims, :vid_metadata_discrepency
    remove_column :claims, :vid_audio_discrepency
    remove_column :claims, :vid_logical_discrepency
    remove_column :claims, :txt_unreliable_news_content
    remove_column :claims, :txt_insufficient_verifiable_srcs
    remove_column :claims, :txt_has_clickbait
    remove_column :claims, :txt_poor_language
    remove_column :claims, :txt_crowds_distance_discrepency
    remove_column :claims, :txt_author_offers_little_evidence
    remove_column :claims, :txt_reliable_sources_disapprove
    remove_column :claims, :review_verdict
    remove_column :claims, :review_description
    remove_column :claims, :review_sharing_mode
    remove_column :claims, :review_is_complete
    remove_column :claims, :review_published_url
    remove_column :claims, :medium_is_blacklisted
    remove_column :claims, :medium_failed_factcheck_before
    remove_column :claims, :medium_has_poor_security
    remove_column :claims, :medium_whois_info_discrepency
    remove_column :claims, :medium_hosting_discrepency
    remove_column :claims, :medium_is_biased
    remove_column :claims, :medium_is_poorly_ranked
    remove_column :claims, :medium_is_not_liable
    remove_column :claims, :medium_lacks_flagging_means
    remove_column :claims, :medium_other_problems
    remove_column :claims, :medium_review_verdict
    remove_column :claims, :medium_review_description
    remove_column :claims, :medium_review_sharing_mode
    remove_column :claims, :medium_review_is_completed
    remove_column :claims, :src_lacks_proper_credentials
    remove_column :claims, :src_failed_factcheck_before
    remove_column :claims, :src_has_poor_writing_history
    remove_column :claims, :src_supported_by_trolls
    remove_column :claims, :src_difficult_to_locate
    remove_column :claims, :src_other_problems
    remove_column :claims, :src_review_verdict
    remove_column :claims, :src_review_description
    remove_column :claims, :src_review_sharing_mode
    remove_column :claims, :src_review_is_completed
    remove_column :claims, :has_video
    remove_column :claims, :medium_known
    remove_column :claims, :medium_review_started
    remove_column :claims, :src_known
    remove_column :claims, :src_review_started
    remove_column :claims, :img_review_started
    remove_column :claims, :vid_review_started
    remove_column :claims, :note_url
    remove_column :claims, :note_has_video
    remove_column :claims, :note_medium_known
    remove_column :claims, :note_medium_id
    remove_column :claims, :note_medium_is_blacklisted
    remove_column :claims, :note_medium_failed_factcheck_before
    remove_column :claims, :note_medium_has_poor_security
    remove_column :claims, :note_medium_whois_info_discrepency
    remove_column :claims, :note_medium_hosting_discrepency
    remove_column :claims, :note_medium_is_biased
    remove_column :claims, :note_medium_is_poorly_ranked
    remove_column :claims, :note_medium_is_not_liable
    remove_column :claims, :note_medium_lacks_flagging_means
    remove_column :claims, :note_medium_other_problems
    remove_column :claims, :note_medium_review_verdict
    remove_column :claims, :note_medium_review_description
    remove_column :claims, :note_medium_review_sharing_mode
    remove_column :claims, :note_src_known
    remove_column :claims, :note_src_lacks_proper_credentials
    remove_column :claims, :note_src_failed_factcheck_before
    remove_column :claims, :note_src_has_poor_writing_history
    remove_column :claims, :note_src_supported_by_trolls
    remove_column :claims, :note_src_difficult_to_locate
    remove_column :claims, :note_src_other_problems
    remove_column :claims, :note_src_review_verdict
    remove_column :claims, :note_src_review_description
    remove_column :claims, :note_src_review_sharing_mode
    remove_column :claims, :note_img_review_started
    remove_column :claims, :note_img_old
    remove_column :claims, :note_img_forensic_discrepency
    remove_column :claims, :note_img_metadata_discrepency
    remove_column :claims, :note_img_logical_discrepency
    remove_column :claims, :note_vid_review_started
    remove_column :claims, :note_vid_old
    remove_column :claims, :note_vid_forensic_discrepency
    remove_column :claims, :note_vid_metadata_discrepency
    remove_column :claims, :note_vid_audio_discrepency
    remove_column :claims, :note_vid_logical_discrepency
    remove_column :claims, :note_txt_unreliable_news_content
    remove_column :claims, :note_txt_insufficient_verifiable_srcs
    remove_column :claims, :note_txt_has_clickbait
    remove_column :claims, :note_txt_poor_language
    remove_column :claims, :note_txt_crowds_distance_discrepency
    remove_column :claims, :note_txt_author_offers_little_evidence
    remove_column :claims, :note_txt_reliable_sources_disapprove
    remove_column :claims, :note_review_verdict
    remove_column :claims, :note_review_description
    remove_column :claims, :note_review_sharing_mode
    remove_column :claims, :note_review_published_url
    remove_column :claims, :note_src_id
    remove_column :claims, :note_has_image
  end
end
