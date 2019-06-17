
class Player
    attr_reader :name, :throw

  def initialize(player)
    @name = player
  end

  def self.create(name)
      player = Player.new(name)
      @player = player.name
  end

  def self.instance
    @player
  end

  def self.player_action(choice)
    @throw = choice.downcase.to_sym
  end

  def self.choice
    @throw
  end

end
