ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'

class DataBaseServer < Sinatra::Base
  
  get '/' do
    'Hello'
  end
  
  # get '/set' do
  #   puts params
  #   redirect '/'
  # end
end