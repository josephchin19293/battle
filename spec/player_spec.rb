require 'player'

describe Player do
	let(:name) {"Alex"}
	subject(:player) {described_class.new(name)}
	describe '#name' do
		it 'returns its name' do
			expect(player.name).to eq name
		end
	end
end