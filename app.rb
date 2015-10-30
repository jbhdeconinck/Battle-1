require 'sinatra/base'
require 'shotgun'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_name_1])
    player_2 = Player.new(params[:player_name_2])
    $game = Game.new(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attacking' do
    $game.attack($game.opponent($game.current_turn))
    redirect '/attack'
  end

  post '/back_to_play' do
    $game.switch_turns
    redirect '/play'
  end

  get '/attack' do
    @game = $game
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
