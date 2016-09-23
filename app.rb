# app.rb
require 'sinatra'
# require 'Haml'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require 'pry'
require './models/model' 

get '/' do
	# @model = Model.new(name: "Hi")
	# @model.save
	@models = Model.all
 #  	erb :test
 	erb :alex
end

get '/contact' do
	haml :contact
end	

get '/form' do
	haml :form
end	

post '/submit' do

	puts params["community"]

	@model = Model.new(name: params)
	@model.save

	redirect '/'
	# if @model.save
	# 	redirect '/'
	# else
	# 	"Sorry, there was an error!"
	# end
end




# binding.pry