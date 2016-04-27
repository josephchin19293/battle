require 'sinatra/base'

class Battle < Sinatra::Base
  
  get '/' do
    erb :start
  end

  get '/names' do
		session[:name1] = params[:name1]
    session[:name2] = params[:name2]
  	erb :index
  end

  post '/play' do
  	@name1 = session[:name1]
  	@name2 = session[:name2]
  	erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
