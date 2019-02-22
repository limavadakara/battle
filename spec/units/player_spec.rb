require 'player.rb'
describe Player do
  let(:player_2) { Player.new("Elephant") }
  name = "Ant"
  player = Player.new(name)
  it 'Gets created with a name and a HP of 0' do

    expect(player.name).to equal name
    expect(player.hp).to eq Player::INITIAL_HIT_POINTS
  end

  it 'Reduces the opponent hit points by 10' do

    expect { player.attack(player_2) }.to change { player_2.hp }.by(-10)

  end
end
