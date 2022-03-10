class Game
  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn_counter = 1
  end

  def attack
    @players[next_turn_index].receive_damage(random_damage)
    increment_turn
  end

  def next_turn_index
    @turn_counter % 2
  end

  def winner
    return players[0] unless players[1].alive?
    return players[1] unless players[0].alive?
  end
  
  private

  def random_damage
    rand(0..40)
  end

  def increment_turn
    @turn_counter += 1
  end
    
end