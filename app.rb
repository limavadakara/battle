require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

 get "/" do
   erb(:index)
 end

 post "/names" do
   session[:player_1] = params[:player_1_name]
   session[:player_2] = params[:player_2_name]
   redirect "/play"
 end

 get "/play" do
   @player_1 = session[:player_1]
   @player_2 = session[:player_2]
   @player_2_hit_point = 10
   @attack_confirmation = ""
   erb(:play)

 end

 post "/attack"  do
   @player_1 = session[:player_1]
   @player_2 = session[:player_2]
   @player_2_hit_point = 10
   @attack_confirmation = "Player 2 attacked successfully!"
   erb(:play)
   
 end
 run! if app_file == $0
end
