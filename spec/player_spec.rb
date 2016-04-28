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
    end


    describe '#HP' do
      it 'returns the HP' do
        expect(cersei.hp).to eq described_class::DEFAULT_HP
      end
    end

    describe '#alive?' do
      it 'returns true by default' do
        expect(tyrion.alive?).to eq true
      end

      it 'alive? is false when HP is 0' do
        10.times{tyrion.receive_damage}
        expect(tyrion.alive?).to eq false
      end
    end
end
