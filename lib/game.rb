class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  def attack(player, damage = 30)
    player.receive_damage(damage)
  end
  
end