require 'game'

describe Game do
	let(:player1) {double :player, take_damage: 90}
	let(:player2) {double :player, take_damage: 90}
	subject(:game) {described_class.new(player1,player2)}

	describe '#player1' do
		it 'returns player1' do
			expect(game.player1).to eq player1
		end
	end

	describe '#player2' do
		it 'returns player2' do
			expect(game.player2).to eq player2
		end
	end

	describe '#attack' do
		it 'calls :take_damage on the player' do
			expect(player1).to receive(:take_damage)
			game.attack(player1)
		end
	end
end
