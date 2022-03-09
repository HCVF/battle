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
      expect(player1).to receive(:receive_damage)
      subject.attack(player1)
    end
  end
end