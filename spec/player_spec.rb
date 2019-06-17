require './lib/player'

describe 'Player' do
  it 'initialises with a name' do
    player = Player.new('Bart')

    expect(player.name).to eq 'Bart'
  end
  it 'knows its own instance' do
    Player.create('Bart')

    expect(Player.instance).to eq 'Bart'
  end
  it 'is able to make an action' do
    Player.create('Bart')
    Player.player_action('Paper')

    expect(Player.choice).to eql :paper
  end
end
