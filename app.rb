require 'sinatra/base'
require 'shotgun'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_name_1])
    $player_2 = Player.new(params[:player_name_2])
    redirect '/play'
  end

  get '/play' do
    @player_name_1 = $player_1.name
    @player_name_2 = $player_2.name
    @player_2_hp = $player_2.hp
    erb :play
  end

  post '/attacking' do
    $player_1.attack($player_2)
    redirect '/attack'
  end

  get '/attack' do
    @player_name_1 = $player_1.name
    @player_name_2 = $player_2.name
    @player_2_hp = $player_2.hp
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
