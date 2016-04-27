require 'game'

describe Game do
	let(:player1) {double :player, take_damage: 90, name: "Joseph"}
	let(:player2) {double :player, take_damage: 90, name: "Alex"}
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

	describe '#current_turn' do
		it 'shows the name of the player whose turn it is' do
			expect(game.current_turn).to eq(player1)
		end

		it 'changes player after an attack' do
			game.attack(player2)
			expect(game.current_turn).to eq(player2)
		end
	end
	describe '#awaiting_turn' do
		it 'returns the player who is not active' do
			expect(game.awaiting_turn). to eq (player2)
		end

	end
end
