require './lib/game'

describe 'Game initialises' do
  it 'with the rules ' do
    expect(Game::KEY_BEATS_VALUE).to include(rock: :scissors, scissors: :paper, paper: :rock)  
  end
  it 'with a player' do
    game = Game.new('Bart')

    expect(game.player.name).to eq 'Bart'
  end

end
