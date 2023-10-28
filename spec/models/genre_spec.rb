require './classes/genre'
require './classes/item'
describe Genre do
  let(:genre) { Genre.new('Terror', 800) }
  let(:item) { Item.new('26/10/2023') }
  describe 'Create a new genre' do
    it 'Should creates a new instance of Genre' do
      expect(genre).to be_a(Genre)
    end
    it 'Should have a genre name' do
      expect(genre.name).to eq('Terror')
    end
  end
  describe 'items array' do
    it 'Should be empty' do
      expect(genre.items.length).to be(0)
    end
  end
end
