require 'sinatra/base'
require 'bundler'
Bundler.require
    
class App < Sinatra::Base
    get '/' do
      erb :index
    end
  
    get '/:form_type' do
      erb params[:form_type].to_sym
    end
  
    post '/:form_type' do
      erb :results
    end

end
