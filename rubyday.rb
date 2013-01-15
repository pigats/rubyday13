require 'compass'
require 'sinatra'
require 'haml'

configure do
  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'views/stylesheets'
    config.images_dir = 'images'
  end
  set :scss, Compass.sass_engine_options
end

get '/stylesheets/:name.css' do
  scss :"stylesheets/#{params[:name]}.css"
end

get '/' do
  haml :'index.html'
end