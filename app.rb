require 'sinatra/base'
require 'sinatra/reloader' 

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    session[:player2_HP] = 99
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player2_HP = session[:player2_HP]
    erb(:play)
  end

  post '/attack' do
    session[:player2_HP] -= 30
    redirect '/play'
  end

  run! if app_file == $0
end
