require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = { name:params[:player_1] }
    session[:player_2] = { name:params[:player_2] }
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:play)
  end

  post '/play' do
    redirect '/player_1_attacks_player_2'
  end

  get '/player_1_attacks_player_2' do
    erb(:player_1_attacks_player_2)
  end

  run! if app_file == $0
end
