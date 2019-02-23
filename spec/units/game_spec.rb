require 'game'
describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  subject(:game) { described_class.new(player1, player2) }

  it 'gets created with the 2 starting players and a list of them' do
    expect(game.player1).to  equal player1
    expect(game.player2).to equal player2
    expect(game.players).to include(player1)
    expect(game.players).to include(player2)
  end

  it 'Should switch turns for the players. Game starts with turn for player 1' do
    expect(game.current_turn).to equal player1
    game.switch_turns
    expect(game.current_turn).to equal player2

  end

  it 'returns the opponent of the player that has the current turn' do
    expect(game.opponent_of(game.current_turn)).to equal player2
  end



end
