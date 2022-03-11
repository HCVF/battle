class Player
  attr_reader :name, :hitpoints
  DEFAULT_HITPOINTS = 99
  def initialize(name = "Computer")
    @name = name
    @hitpoints = DEFAULT_HITPOINTS
  end

  def receive_damage(value)
    @hitpoints -= value
  end

  def alive?
    @hitpoints > 0
  end
end