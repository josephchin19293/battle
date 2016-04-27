require 'player'

describe Player do
	subject(:player1) {described_class.new('Alex')}
	subject(:player2) {described_class.new('Joseph')}

	describe '#name' do
		it 'returns its name' do
			expect(player1.name).to eq 'Alex'
		end
	end
	describe '#take_damage' do
		it 'reduces hp by ten' do
			expect{player2.take_damage}.to change{player2.hp}.by(-10)
		end
	end
end
