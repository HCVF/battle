require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer_game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    player2name = params[:player2]
    if player2name == "Computer" || player2name == ""
      player2name = "Computer"
      $game = ComputerGame.new(Player.new(params[:player1]), Player.new(player2name))
    else
      $game = Game.new(Player.new(params[:player1]), Player.new(player2name))
    end
    redirect '/play'
  end

  get '/play' do
    redirect '/finished' if $game.winner
    @game = $game
    @index = $game.next_turn_index
    erb(:play)
  end

  post '/attack' do
    $game.attack
    redirect '/play'
  end

  get '/finished' do
    @winner = $game.winner
    erb(:finished)
  end

  run! if app_file == $0
end
