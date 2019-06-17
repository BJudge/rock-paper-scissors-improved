require_relative 'player'
require_relative 'computerplayer'

class Game

  KEY_BEATS_VALUE = { rock: :scissors, scissors: :paper, paper: :rock }

  attr_reader :player, :computer

  def initialize(player_name, computer='Computer')
    @player = Player.create(player_name)
    @computer = ComputerPlayer.create(computer)
  end

  def self.create(player_1, computer= 'Computer')
    @game = Game.new(player_1, computer)
  end

  def self.instance
    @game
  end

  def self.game_result(player_choice)
    KEY_BEATS_VALUE[player_choice]
  end

  def self.erroneous_hand(player_choice)
    KEY_BEATS_VALUE.key?(player_choice)
  end
end
