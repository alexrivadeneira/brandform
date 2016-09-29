# app.rb
require 'sinatra'
# require 'Haml'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require 'pry'
require './models/model' 

get '/' do
	haml :form
end

get '/thanks' do
	haml :thanks
end	

get '/rivadeneira' do

	@models = Model.all
 	erb :submissions
end	

post '/submit' do

	puts params["community"]

	@model = Model.new(name: params)
	@model.save

	redirect '/thanks'
	# if @model.save
	# 	redirect '/'
	# else
	# 	"Sorry, there was an error!"
	# end
end




# binding.pry