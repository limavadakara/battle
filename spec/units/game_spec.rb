require 'game'
describe Game do
  let(:player) {double :player }
  it 'Attacks a player' do
    expect(player).to receive(:be_attacked)
    subject.attack(player)

  end
end
