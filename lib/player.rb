
class Player
    attr_reader :name

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
end
