ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'

require_relative 'models/data_model'

class DataBaseServer < Sinatra::Base
  
  enable :sessions
  set :session_secret, 'super secret'
  
  get '/' do
    'Hello'
  end
  
  get '/set' do
    data = DataModel.new
    data.store(params)
    session[:data] = data
    redirect '/'
  end
  
  get '/get' do
    data = session[:data]
  end
end