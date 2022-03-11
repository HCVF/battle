require './lib/game'

class ComputerGame < Game

  def attack
    @players[1].receive_damage(random_damage)
    computer_attack
  end

  def next_turn_index
    0
  end

  private

  def computer_attack
    @players[0].receive_damage(random_damage)
  end

end