require './lib/player'

describe 'Player' do
  it 'initialises with a name' do
    player = Player.new('Bart')

    expect(player.name).to eq 'Bart'
  end
end
