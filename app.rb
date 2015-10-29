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
    erb :play
  end

  post '/attacking' do
    redirect '/attack'
  end

  get '/attack' do
    @player_name_1 = $player_1.name
    @player_name_2 = $player_2.name
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
