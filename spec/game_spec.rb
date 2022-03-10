require 'game'

describe Game do
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }
  subject { Game.new(player1, player2) }
  describe "#initialize" do
    it "accepts two arguments" do
      expect(Game).to receive(:new).with(player1, player2)
      subject
    end
  end
  describe "#attack" do
    it "inflicts damage to the player passed in argument" do
      expect(player2).to receive(:receive_damage)
      subject.attack
    end
  end
  describe "#next_turn_index" do
    it "will initially return index of 1" do
      expect(subject.next_turn_index).to eq(1)
    end
    it "it will return index of 0 when the first turn is complete" do
      allow(player2).to receive(:receive_damage)
      subject.attack
      expect(subject.next_turn_index).to eq(0)
    end
  end
  describe "#winner" do
    it "returns nil if players are both alive" do
      allow(player1).to receive(:alive?).and_return(true)
      allow(player2).to receive(:alive?).and_return(true)
      expect(subject.winner).to be_nil
    end
    it "returns player 2 if player 2 is the survivor" do
      allow(player1).to receive(:alive?).and_return(false)
      allow(player2).to receive(:alive?).and_return(true)
      expect(subject.winner).to be(player2)
    end
    it "returns player 1 if player 1 is the survivor" do
      allow(player1).to receive(:alive?).and_return(true)
      allow(player2).to receive(:alive?).and_return(false)
      expect(subject.winner).to be(player1)
    end
  end
end