class Player
  attr_reader :name, :hitpoints
  DEFAULT_HITPOINTS = 99
  def initialize(name)
    @name = name
    @hitpoints = DEFAULT_HITPOINTS
  end

  def receive_damage(value)
    @hitpoints -= value
  end
end