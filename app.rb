# app.rb
require 'sinatra'
# require 'Haml'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require 'pry'
require './models/model' 
require './models/selection' 
require './models/color' 


get '/' do
	haml :form
end


get '/thanks' do
	haml :thanks
end	

get '/rivadeneira' do

	@models = Model.all
	@selections = Selection.all
	
 	erb :submissions
end	

get '/rivadeneirad' do
	@selections = Selection.all
	erb :rivadeneirad
end



post '/submit' do

	@selection = Selection.new(communityurl: params["community-url"],
		coloraccent1: params["color-accent1"],
		coloraccent2: params["color-accent2"],
		colorhighlight: params["color-highlight"],
		herocarousel: params["hero-carousel"],
		heroslide1headerline: params["hero-slide1-header-line"],
		heroslide1textparagraph: params["hero-slide1-text-paragraph"],
		heroslide1bgurl: params["hero-slide1-bg-url"],
		heroslide1button1name: params["hero-slide1-button1-name"],
		heroslide1button1url: params["hero-slide1-button1-url"],
		heroslide1button2name: params["hero-slide1-button2-name"],
		heroslide1button2url: params["hero-slide1-button2-url"],
		heroslide2headerline: params["hero-slide2-header-line"],
		heroslide2textparagraph: params["hero-slide2-text-paragraph"],
		heroslide2bgurl: params["hero-slide2-bg-url"],
		heroslide2button1name: params["hero-slide2-button1-name"],
		heroslide2button1url: params["hero-slide2-button1-url"],
		heroslide2button2name: params["hero-slide2-button2-name"],
		heroslide2button2url: params["hero-slide2-button2-url"],
		heroslide3headerline: params["hero-slide3-header-line"],
		heroslide3textparagraph: params["hero-slide3-text-paragraph"],
		heroslide3bgurl: params["hero-slide3-bg-url"],
		heroslide3button1name: params["hero-slide3-button1-name"],
		heroslide3button1url: params["hero-slide3-button1-url"],
		heroslide3button2name: params["hero-slide3-button2-name"],
		heroslide3button2url: params["hero-slide3-button2-url"],
		welcomearea: params["welcome-area"],
		welcomeareatext: params["welcome-area-text"],
		activecampaigns: params["active-campaigns"],
		generaltext: params["general-text"],
		textheaderline: params["text-header-line"],
		textparagraph: params["text-paragraph"],
		pinnedideas: params["pinned-ideas"],
		calloutideas: params["callout-ideas"],
		tags: params["tags"],
		video: params["video"],
		videourl: params["video-url"],
		footer: params["footer"],
		footercol1header: params["footer-col1-header"],
		footercol1item1title: params["footer-col1-item1-title"],
		footercol1item1url: params["footer-col1-item1-url"],
		footercol1item2title: params["footer-col1-item2-title"],
		footercol1item2url: params["footer-col1-item2-url"],
		footercol1item3title: params["footer-col1-item3-title"],
		footercol1item3url: params["footer-col1-item3-url"],
		footercol1item4title: params["footer-col1-item4-title"],
		footercol1item4url: params["footer-col1-item4-url"],
		footercol1item5title: params["footer-col1-item5-title"],
		footercol1item5url: params["footer-col1-item5-url"],
		footercol2header: params["footer-col2-header"],
		footercol2item1title: params["footer-col2-item1-title"],
		footercol2item1url: params["footer-col2-item1-url"],
		footercol2item2title: params["footer-col2-item2-title"],
		footercol2item2url: params["footer-col2-item2-url"],
		footercol2item3title: params["footer-col2-item3-title"],
		footercol2item3url: params["footer-col2-item3-url"],
		footercol2item4title: params["footer-col2-item4-title"],
		footercol2item4url: params["footer-col2-item4-url"],
		footercol2item5title: params["footer-col2-item5-title"],
		footercol2item5url: params["footer-col2-item5-url"],
		footercol3header: params["footer-col3-header"],
		footercol3item1title: params["footer-col3-item1-title"],
		footercol3item1url: params["footer-col3-item1-url"],
		footercol3item2title: params["footer-col3-item2-title"],
		footercol3item2url: params["footer-col3-item2-url"],
		footercol3item3title: params["footer-col3-item3-title"],
		footercol3item3url: params["footer-col3-item3-url"],
		footercol3item4title: params["footer-col3-item4-title"],
		footercol3item4url: params["footer-col3-item4-url"],
		footercol3item5title: params["footer-col3-item5-title"],
		footercol3item5url: params["footer-col3-item5-url"],
		footercol4header: params["footer-col4-header"],
		footercol4item1title: params["footer-col4-item1-title"],
		footercol4item1url: params["footer-col4-item1-url"],
		footercol4item2title: params["footer-col4-item2-title"],
		footercol4item2url: params["footer-col4-item2-url"],
		footercol4item3title: params["footer-col4-item3-title"],
		footercol4item3url: params["footer-col4-item3-url"],
		footercol4item4title: params["footer-col4-item4-title"],
		footercol4item4url: params["footer-col4-item4-url"],
		footercol4item5title: params["footer-col4-item5-title"],
		footercol4item5url: params["footer-col4-item5-url"],
		horizontalcampaigns: params["horiztonal-active-campaigns"],
		headerlink1text: params["headerlink1text"],
		headerlink1url: params["headerlink1url"],
		headerlink2text: params["headerlink2text"],
		headerlink2url: params["headerlink2url"],
		headerlink3text: params["headerlink3text"],
		headerlink3url: params["headerlink3url"],
		headerlink4text: params["headerlink4text"],
		headerlink4url: params["headerlink4url"],	
		headerlink5text: params["headerlink5text"],
		headerlink5url: params["headerlink5url"],						
		divbgimg: params["div-bg-img"]

		)

	@selection.save

	# @model = Model.new(name: params)
	# @model.save

	redirect '/thanks'

end



#binding.pry