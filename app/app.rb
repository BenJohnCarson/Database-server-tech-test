ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'

class DataBaseServer < Sinatra::Base
  
  get '/' do
    'Hello'
  end
end