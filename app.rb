require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  MAX_HP = 100

  # enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb(:play)
  end

  get '/player_1_attacks_player_2' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    $game.attack(@player_2)
    erb(:player_1_attacks_player_2)
  end

  run! if app_file == $0
end
