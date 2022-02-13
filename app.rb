require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

  get '/' do 
    erb :index
  end

  post '/names' do
    @player = params[:player_name]
    erb :player
  end
  run! if app_file == $0


end