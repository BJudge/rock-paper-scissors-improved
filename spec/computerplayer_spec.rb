require './lib/computerplayer'

describe 'ComputerPlayer' do
  it 'initialises with a default name' do
    computer = ComputerPlayer.new

    expect(computer.name).to eq 'Computer'
  end
  
end
