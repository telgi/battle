require 'game'

describe Game do

  subject(:game) { described_class.new("Hossway", "Joshwah") }
  let(:player_2) { double 'player 2' }

  describe '#initialize' do
    it 'creates player one' do
      expect(game.player_1).to eq "Hossway"
    end

    it 'creates player two' do
      expect(game.player_2).to eq "Joshwah"
    end
  end

  describe "#attack" do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
