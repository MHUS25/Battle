require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end


  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.opponent_of(@game.current_turn))
    erb :attack
  end

  post '/switch-turns' do
    @game.switch_turns
    redirect('/game_over') if @game.game_over?
    redirect('/play')
  end

  get '/game_over' do
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
