require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.not_turn)
    erb(:attack)
  end

  run! if app_file == $0
end
