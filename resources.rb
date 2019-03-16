Resource.delete_all
r = Resource.new(:name=>'Google Advanced Search', :description=>'Use Google’s advanced search (based on date) to identify when it first went live.Note that Google lists results by relevance (not by date). You can define the date to be able to sort by date.', :tutorial=>'', :icon=>'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', :url=>'https://www.google.com/advanced_search', :used_for_qs=>'MdwlDEWe7iT3XMAvgK2FJSgiBfE=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'TinEye', :description=>'A tool to identify fake/old images or videos by using reverse image searching. ', :tutorial=>'https://tineye.com/how', :icon=>'', :url=>'https://tineye.com/', :used_for_qs=>'MdwlDEWe7iT3XMAvgK2FJSgiBfE=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'Forensically', :description=>'A website where you can upload images and see if they have been changed, and also look at metadata. ', :tutorial=>'https://29a.ch/2015/08/16/forensically-photo-forensics-for-the-web', :icon=>'https://29a.ch/photo-forensics/logo-32.cache-1b3e5ef06f154f06.png', :url=>'https://29a.ch/photo-forensics/#forensic-magnifier', :used_for_qs=>'GOv3F+BPywIEDxx/Igys5aRetOM= roFOIXTl1WGZB4h3H9Wq1Ri5Dd4= 1YAbLBvLC0LOOyXlYhimI0AEX8g=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'InVID', :description=>'This toolkit is provided by the InVID european project to help journalists to verify content on social networks. It is downloaded as a plugin. Provides contextual information, reverse image search, metadata about videos. ', :tutorial=>'https://www.invid-project.eu/tools-and-services/invid-verification-plugin/', :icon=>'https://www.invid-project.eu/wp-content/uploads/2016/03/invid-logo_def_rgb_200px-e1457008800691.png', :url=>'https://www.invid-project.eu/', :used_for_qs=>'a4jc12Xtseay654G5kMOOzfFi/s=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'WatchFrameByFrame', :description=>'Provides a tool to slow down videos and look at them frame by frame. ', :tutorial=>'', :icon=>'http://www.watchframebyframe.com/static/sloth-2.svg', :url=>'http://www.watchframebyframe.com/', :used_for_qs=>'a4jc12Xtseay654G5kMOOzfFi/s=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'Truepic', :description=>'A pay-app. ', :tutorial=>'', :icon=>'https://truepic.com/wp-content/themes/truepic-website/images/logo-white@2x.png', :url=>'https://truepic.com/', :used_for_qs=>'MdwlDEWe7iT3XMAvgK2FJSgiBfE=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'YouTube Dataviewer', :description=>'', :tutorial=>'', :icon=>'', :url=>'https://citizenevidence.amnestyusa.org/', :used_for_qs=>'a4jc12Xtseay654G5kMOOzfFi/s=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'Factcheck.org', :description=>'Search in the list if the source of the claim is listed on Factcheck.org using cmd+f. ', :tutorial=>'', :icon=>'', :url=>'https://www.factcheck.org/2017/07/websites-post-fake-satirical-stories/', :used_for_qs=>'Xl/0k6IBI85fWn2t9r/XgXG27EM=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'Wikipedia\'s list of fake news websites', :description=>'Wikipedia\'s list of fake news sources. ', :tutorial=>'', :icon=>'', :url=>'https://en.wikipedia.org/wiki/List_of_fake_news_websites', :used_for_qs=>'xqpcnRZtClsRmMqRGa+/7y3dblk=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'Godaddy', :description=>'A search tool to find out more about the source of the domain. ', :tutorial=>'', :icon=>'', :url=>'', :used_for_qs=>'4WkZ+Yevia+di60kyklYqhHw5GA=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'Svenska Internetstiftelsen', :description=>'Search .se and .nu domain addresses. *Since 25 may 2018 they no longer show email address or domain owner because of GDPR.', :tutorial=>'', :icon=>'', :url=>'https://internetstiftelsen.se/', :used_for_qs=>'4WkZ+Yevia+di60kyklYqhHw5GA=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'View DNS', :description=>'Possible to fin IP adress of the domain and who manages it, other websites hosted on the same server and the location of the server. ', :tutorial=>'', :icon=>'https://viewdns.info/images/viewdns_logo.gif', :url=>'https://viewdns.info/', :used_for_qs=>'4WkZ+Yevia+di60kyklYqhHw5GA= +dHlKzEbS1m4ebgXCkw6J7L4ovY=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'Media bias Fact Check', :description=>'A website with lists of news sources and their ratings. Also for checking if the source is biased. ', :tutorial=>'https://mediabiasfactcheck.com/methodology/', :icon=>'', :url=>'https://mediabiasfactcheck.com/', :used_for_qs=>'xqpcnRZtClsRmMqRGa+/7y3dblk=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'Web of Trust ', :description=>'A tool for manually checking if a website is trustworthy (by ratings) or downloaded as an application. ', :tutorial=>'', :icon=>'https://www.mywot.com/images/donutPlace.png', :url=>'https://www.mywot.com/', :used_for_qs=>'M7JKulcvkG2acY2ilfN1FhMdV80=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'Alexa', :description=>'Search on your chosen website to check how many visits they have, from where, overlap audiences and sites that link to this page. ', :tutorial=>'', :icon=>'https://www.alexa.com/images/homepage/alexa-logo.png', :url=>'https://www.alexa.com/', :used_for_qs=>'Qcld+BiCDLdZddF3mLHY9qgyBWg=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
r = Resource.new(:name=>'SimilarWeb', :description=>'Available search tool to check a website\'s traffic, popularity and which pages that links to this website. ', :tutorial=>'', :icon=>'', :url=>'https://www.similarweb.com/', :used_for_qs=>'tlvjs3wxncN9Jh4AU5whSUqd1bo=', :user_id=>2, :created_at=>Time.now.getutc, :updated_at=>Time.now.getutc)
r.save
