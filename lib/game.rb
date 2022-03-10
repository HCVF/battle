class Game
  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn_counter = 1
  end

  def attack(damage = 30)
    @players[next_turn_index].receive_damage(damage)
    increment_turn
  end

  def next_turn_index
    @turn_counter % 2
  end

  private

  def increment_turn
    @turn_counter += 1
  end
    
end