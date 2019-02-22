require 'player.rb'
describe Player do
  player_2 = Player.new("Elephant")
  name = "Ant"
  player = Player.new(name)
  it 'Gets created with a name and default HP' do

    expect(player.name).to equal name
    expect(player.hp).to eq Player::INITIAL_HIT_POINTS
  end

  it "Reduces its hit points by 10 when attacked" do
    expect { player_2.be_attacked }.to change { player_2.hp }.by(-10)

  end

end
