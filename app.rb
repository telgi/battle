require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  MAX_HP = 100

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.not_turn)
    erb(:attack)
  end

  run! if app_file == $0
end
