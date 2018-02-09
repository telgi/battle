require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_2) { double 'player 2' }
  let(:player_1) { double 'player 1' }

  describe '#initialize' do
    it 'creates player one' do
      expect(game.player_1).to eq player_1
    end

    it 'creates player two' do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#attack" do
    it 'damages the player' do
      expect(game.player_2).to receive(:receive_damage)
      game.attack(game.player_2)
    end

    it 'switches whos turn it is' do
      expect(game.player_2).to receive(:receive_damage)
      game.attack(game.player_2)
      expect(game.turn).to eq game.player_2
    end
  end


end
