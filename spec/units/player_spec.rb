require 'player.rb'
describe Player do
  it 'Gets created with a name and a HP of 0' do
    name = "A Name"
    player = Player.new(name)
    expect(player.name).to equal name
    expect(player.hp).to eq 0
  end
end
