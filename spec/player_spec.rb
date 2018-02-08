require 'player'

describe Player do

  subject(:player) { described_class.new("Hossway") }

  describe "#name" do
    it 'returns the name of the player' do
      expect(player.name).to eq "Hossway"
    end
  end
end