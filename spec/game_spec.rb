require './lib/game'

describe 'Game' do
  it 'initialises with the rules ' do
    expect(Game::KEY_BEATS_VALUE).to include(rock: :scissors, scissors: :paper, paper: :rock)
  end
  it ' initialiseswith a player' do
    game = Game.new('Bart')

    expect(game.player).to eq 'Bart'
  end
  it 'lets rock beat scissors' do
    result = Game.game_result(:rock)
    expect(result).to eq :scissors
  end
  it 'lets scissors beat paper' do
    result = Game.game_result(:scissors)
    expect(result).to eq :paper
  end
  it 'lets paper beat rock' do
    result = Game.game_result(:paper)
    expect(result).to eq :rock
  end
  it "doesn't recognise waffles as an option" do
    bad_choice = Game.erroneous_hand(:waffles)
    expect(bad_choice).to be false
  end
  it "recognise rock as an option" do
    bad_choice = Game.erroneous_hand(:rock)
    expect(bad_choice).to be true
  end
  it "recognise paper as an option" do
    bad_choice = Game.erroneous_hand(:paper)
    expect(bad_choice).to be true
  end
  it "doesn't scissors waffles as an option" do
    bad_choice = Game.erroneous_hand(:scissors)
    expect(bad_choice).to be true
  end
end
