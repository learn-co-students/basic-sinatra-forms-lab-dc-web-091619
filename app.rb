require 'sinatra/base'

class App < Sinatra::Base

  @team = {}

  get '/newteam' do 
    erb :newteam
  end

  post '/newteam' do
    @team = {
      name: params[:name],
      coach: params[:coach],
      pg: params[:pg],
      sg: params[:sg],
      pf: params[:pf],
      sf: params[:sf],
      c: params[:c]
    }

    erb :team
  end

  get '/team' do 
    erb :team
  end


end
