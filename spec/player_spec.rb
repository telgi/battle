require 'player'

describe Player do

  subject(:player) { described_class.new("Terance") }

  describe "#name" do
    it 'returns the name of the player' do
      expect(player.name).to eq "Terance"
    end
  end
end