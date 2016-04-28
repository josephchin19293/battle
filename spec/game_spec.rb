require 'game'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
  let(:player_1) {double :player}
  let(:player_2) {double :player}

  describe '#player 1' do
    it 'retrieves first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player 2' do
    it 'retrieves second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe 'attack' do

    it 'damages the player' do
      expect(subject).to receive(:attack)
      subject.attack(player_2)
    end
  end
end
