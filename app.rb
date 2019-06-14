require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computerplayer'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  ["/win", "/draw", "/lose"].each do |path|
    before path do
        @computer_hand = ComputerPlayer.instance
        @player_hand = Player.choice
    end
  end

  get '/' do
    erb :'index'
  end

  post '/names' do
     Game.create(params[:player_1_name])

    redirect '/play'
  end

  get '/play' do
    @player_1_name = @game.player
    erb :'play'
  end

  get '/game' do

    erb :'game'
  end

  post '/game' do
    @player_choice = Player.player_action(params[:player_choice])
    halt 401, "Selection not allowed. \n Please only choose Rock, Paper, or Scissors." unless Game.erroneous_hand(@player_choice)
    @computer_action = ComputerPlayer.computer_action
    if @player_choice == @computer_action
      redirect '/draw'
    elsif @computer_action == Game.game_result(@player_choice)
      redirect '/win'
    else
      redirect '/lose'
    end
  end

  get '/win' do
    @computer_hand
    @player_hand
    erb :'win'
  end

  get '/draw' do
     @computer_hand
     @player_hand
    erb :'draw'
  end

  get '/lose' do
     @computer_hand
     @player_hand
    erb :'lose'
  end

  run! if app_file == $0
end
