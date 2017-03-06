ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'

require_relative 'models/data_model'

class DataBaseServer < Sinatra::Base
  
  set :port, 4000
  
  enable :sessions
  set :session_secret, 'super secret'
  
  get '/' do
    'Hello'
  end
  
  get '/set' do
    data = DataModel.new
    data.create(params)
    session[:data] = data
    redirect '/'
  end
  
  get '/get' do
    data = session[:data]
    data.retrieve(params)
  end
  
  run! if app_file == $0
end