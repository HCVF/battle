require 'computer_game'

describe ComputerGame do
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }
  subject { ComputerGame.new(player1, player2) }
  describe "#attack" do
    it "player 2 receives damage first, followed by player 1" do
      expect(player2).to receive(:receive_damage).ordered
      expect(player1).to receive(:receive_damage).ordered
      subject.attack
    end
  end
  describe "#next_turn_index" do
    it "always returns 0" do
      allow(player1).to receive(:receive_damage)
      allow(player2).to receive(:receive_damage)
      subject.attack
      expect(subject.next_turn_index).to eq 0
    end
  end
end


