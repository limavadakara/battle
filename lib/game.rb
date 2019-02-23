class Game
  attr_reader :player1, :player2, :current_turn, :players

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
    @current_turn = @player1
  end

  def opponent_of(a_player)
    @players.select { |player| player != a_player }.first
  end

  def switch_turns
    @current_turn == @player1 ? @current_turn =  @player2 : @current_turn = @player1
  end



end
