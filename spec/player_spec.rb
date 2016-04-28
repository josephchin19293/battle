require "player"

describe Player do
  let(:tyrion_url) {"http://vignette1.wikia.nocookie.net/gameofthrones/images/6/61/The_children_Tyrion_with_Bow_S4.png/revision/latest?cb=20140616190514"}
  let(:cersei_url) {"http://vignette4.wikia.nocookie.net/gameofthrones/images/c/c6/Cersei-lannister-lena-headey-helen-sloan.jpeg/revision/20120424220203"}
  subject(:tyrion) { Player.new('Tyrion Lannister', "tyrion") }
  subject(:cersei) { Player.new('Cersie Lannister', "cersei") }

    describe '#name' do
      it 'returns the name' do
        expect(tyrion.name).to eq 'Tyrion Lannister'
      end
    end

    describe '#HP' do
      it 'returns the HP' do
        expect(cersei.hp).to eq described_class::DEFAULT_HP
      end
    end

    describe '#image' do
      it 'returns the image URL 1' do
        expect(tyrion.image).to eq tyrion_url
      end
      it 'returns the image URL 2' do
        expect(cersei.image).to eq cersei_url
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
