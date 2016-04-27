require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    erb(:attack)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
