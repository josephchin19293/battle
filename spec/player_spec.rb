require "player"

describe Player do
  subject(:tyrion) { Player.new('Tyrion Lannister') }
  subject(:cersei) { Player.new("Cersie Lannister") }

    describe '#name' do
      it 'returns the name' do
        expect(tyrion.name).to eq 'Tyrion Lannister'
      end

      it 'starts with 100 HP' do
        expect(tyrion.hp).to eq 100
      end

    

    describe '#HP'
      it 'returns the HP' do
        expect(cersei.hp).to eq described_class::DEFAULT_HP
      end
    end
end
