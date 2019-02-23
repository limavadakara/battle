require 'attack'
describe Attack do
  let(:player) { double :player}
  subject(:attacker) { described_class }
  it 'attacks a player passed in' do
    expect(player).to receive(:be_attacked)
    attacker.run(player)
  end
end
