require 'game'

describe Game do
	subject(:game) {described_class.new}
	let(:player1) {double :player, take_damage: 90}
	describe '#attack' do
		it 'calls :take_damage on the player' do
			expect(player1).to receive(:take_damage)
			game.attack(player1)
		end
	end
end