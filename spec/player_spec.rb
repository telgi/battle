require 'player'

describe Player do

  subject(:player) { described_class.new("Hossway") }

  describe "#name" do
    it 'returns the name of the player' do
      expect(player.name).to eq "Hossway"
    end
  end

  describe "#hitpoints" do
    it 'returns the hitpoints' do
      expect(player.hp).to eq described_class::DEFAULT_HP
    end
  end

#   describe "#player 1 attacks player 2" do
#     it 'damages player 2 by 10hp'
#       expect(player_2).to
#   end
# end