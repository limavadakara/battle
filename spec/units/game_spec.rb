require 'game'
describe Game do
  let(:player1) { double :player }
  let(:player2) { double :player }
  subject(:game) { described_class.new(player1, player2) }

  it 'gets created with the 2 starting players' do
    expect(game.player1).to  equal player1
    expect(game.player2).to equal player2
  end

  it 'Attacks a player' do
    expect(player1).to receive(:be_attacked)
    subject.attack(player1)

  end

  it 'Should switch turns for the players. Game starts with turn for player 1' do
    expect(game.current_turn).to equal player1

  end

  it 'Should switch turns for the players after attack' do
    expect(player2).to receive(:be_attacked)
    game.attack(player2)
    expect(game.current_turn).to eq player2
  end
end
