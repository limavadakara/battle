require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

enable :sessions

 get "/" do
   
   erb(:index)
 end

 post "/names" do

   $game = Game.new(Player.new(params[:player_1_name]),
                    Player.new(params[:player_2_name])
                   )
   redirect "/play"
 end

 get "/play" do
   @game = $game
   @attack_confirmation = ""
   @game.current_turn.name
   erb(:play)

 end

 post "/attack"  do

   @game = $game
   @attack_button_clicked = params[:attack_button]
   @game.attack(@game.player2)
   @attack_confirmation = "#{@game.player1.name} attacked #{@game.player2.name}!" if @attack_button_clicked

   erb(:play)

 end
 run! if app_file == $0
end
