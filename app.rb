require 'sinatra/base'

class App < Sinatra::Base

    get '/newteam' do
      erb :newteam
    end

    post '/team' do
      @name = params[:name]
      @coach = params[:coach]
      @pg = params[:pg]
      @sg = params[:sg]
      @sm = params[:sf]
      @pf = params[:pf]
      @C = params[:C]
        erb :team
    end
end
