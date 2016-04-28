require 'game'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
  let(:player_1) {double :player}
  let(:player_2) {double :player}

  describe '#attack' do

    it 'damages the player' do
      expect(subject).to receive(:attack)
      subject.attack(player_2)
    end
  end

  describe '#stab' do

    it 'damages the player' do
      expect(subject).to receive(:stab)
      subject.stab(player_2)
    end
  end

  describe '#pinch' do

    it 'damages the player' do
      expect(subject).to receive(:pinch)
      subject.pinch(player_2)
    end
  end

  describe '#active_player' do
    it 'defaults to player 1' do
      expect(game.active_player).to eq player_1
    end
  end

  describe '#defending_player' do
    it 'defaults to player 2' do
      expect(game.defending_player).to eq player_2
    end
  end

  describe '#switch_turn' do
    it 'switches the active player' do
      game.switch_turn
      expect(game.active_player).to eq player_2
    end
    it 'switches the defending player' do
      game.switch_turn
      expect(game.defending_player).to eq player_1
    end
  end

  describe '#game_over?' do
    before{allow(player_1).to receive(:alive?)}
    before{allow(player_2).to receive(:alive?)}

    it 'it checks if player 1 is alive' do
      expect(player_1).to receive(:alive?)
      subject.game_over?
    end

    it 'checks if player 2 is alive' do
      expect(player_1).to receive(:alive?).and_return true
      expect(player_2).to receive(:alive?)
      subject.game_over?
    end

    it 'by default it returns false' do
      allow(player_1).to receive(:alive?).and_return true
      allow(player_2).to receive(:alive?).and_return true
      expect(subject.game_over?).to eq false
    end

    it 'returns true if player 1 is dead' do
      allow(player_1).to receive(:alive?).and_return false
      expect(subject.game_over?).to eq true
    end

    it 'returns true if player 2 is dead' do
      allow(player_2).to receive(:alive?).and_return false
      expect(subject.game_over?).to eq true
    end

  end
end
