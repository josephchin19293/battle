require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  post '/switch-turns' do
    @game = $game
    if @game.game_over?
      redirect '/game-over'
    else
      @game.switch_turn
      redirect '/play'
    end
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
    @game = $game
    @game.attack(@game.defending_player)
    redirect '/attack'
  end

  get '/attack' do
    @game = $game
    erb :attack
  end

  get '/game-over' do
    @game = $game
    erb :game_over
  end
    
  # start the server if ruby files executed directly
  run! if app_file == $0
end
