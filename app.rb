require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/attack'

class Battle < Sinatra::Base

enable :sessions

 get "/" do

   erb(:index)
 end

 post "/names" do

   @game = Game.create(Player.new(params[:player_1_name]),
                    Player.new(params[:player_2_name]))
   redirect "/play"
 end

before do
  @game = Game.instance
end

 get "/play" do

   @attack_confirmation = ""
   erb(:play)

 end

 post "/attack"  do


   @attack_button_clicked = params[:attack_button]
   Attack.run(@game.opponent_of(@game.current_turn))
   @attack_confirmation = "#{@game.current_turn.name} attacked #{@game.opponent_of(@game.current_turn).name}!" if @attack_button_clicked

   @game.switch_turns
   erb(:play)

 end
 run! if app_file == $0
end
