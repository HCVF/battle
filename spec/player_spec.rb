require 'player'

describe Player do
  default_hitpoints = Player::DEFAULT_HITPOINTS

  let(:player1) { Player.new("Henry") }
  let(:player2) { Player.new("Rob")}

  describe '#initialize' do
    it 'remembers the name' do
      expect(player1.name).to eq('Henry')
    end
    it 'sets the default hitpoints to 99' do
      expect(player1.hitpoints).to eq(default_hitpoints)
    end
  end
  describe "#receive_damage" do
    it "it reduces the hitpoints as per the parameter" do
      expect { player1.receive_damage(10) }.to change { player1.hitpoints }.by(-10)
    end
  end
end