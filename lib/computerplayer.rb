require_relative 'game'

class ComputerPlayer
  attr_reader :name

  def initialize(player="Computer")
    @name = player
  end

  def self.create(name)
      computer = Player.new(name)
      @player = computer.name
  end

  def self.instance
    @computer_hand
  end

  def self.computer_action
    @computer_hand = Game::KEY_BEATS_VALUE.keys.sample
  end

end
