require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

enable :sessions

 get "/" do
   erb(:index)
 end

 post "/names" do
   $player_1 = Player.new(params[:player_1_name])
   $player_2 = Player.new(params[:player_2_name])
   $game = Game.new
   redirect "/play"
 end

 get "/play" do

   @player_1 = $player_1
   @player_2 = $player_2
   @game = $game
   @attack_confirmation = ""
   erb(:play)

 end

 post "/attack"  do

   @player_1 = $player_1
   @player_2 = $player_2
   @game = $game
   @attack_button_clicked = params[:attack_button]
   @game.attack(@player_2)
   @attack_confirmation = "#{@player_1.name} attacked #{@player_2.name}!" if @attack_button_clicked

   erb(:play)

 end
 run! if app_file == $0
end
