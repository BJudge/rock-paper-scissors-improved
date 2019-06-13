require_relative 'player'

class Game

  KEY_BEATS_VALUE = { rock: :scissors, scissors: :paper, paper: :rock }

  attr_reader :player

  def initialize(player_name)
    @player = Player.new(player_name)
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def self.player_action(throw)
    @throw = throw.downcase.to_sym
  end

  def self.computer_action
    KEY_BEATS_VALUE.keys.sample
  end

  def self.game_result(player_choice)
    KEY_BEATS_VALUE[player_choice]
  end

  def self.erroneous_hand(player_choice)
    KEY_BEATS_VALUE.key?(player_choice)
  end

  
end
