require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/character-select' do
    erb :character_select
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name], params[:player_1_image])
    player_2 = Player.new(params[:player_2_name], params[:player_2_image])
    Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.last_instance
  end

  post '/switch-turns' do
    if @game.game_over?
      redirect '/game-over'
    else
      @game.switch_turn
      redirect '/play'
    end
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    @game.attack(@game.defending_player)
    redirect '/attack'
  end

  get '/attack' do
    erb :attack
  end

  post '/stab' do
    @game.stab(@game.defending_player)
    redirect '/stab'
  end

  get '/stab' do
    erb :stab
  end

  post '/pinch' do
    @game.pinch(@game.defending_player)
    redirect '/pinch'
  end

  get '/pinch' do
    erb :pinch
  end

  get '/game-over' do
    erb :game_over
  end



  # start the server if ruby files executed directly
  run! if app_file == $0
end
