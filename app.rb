require 'sinatra'
require 'sass'

set :public_folder, 'public'

get '/stylesheets/:name.css' do
  scss :"stylesheets/#{params[:name]}"
end

get '/' do
  erb :slides
end