require '../.././classes/author'
require '../.././classes/item'
describe Author do
  let(:author) { Author.new('Zabih', 'Noori', 800) }
  let(:item) { Item.new('26/10/2023') }
  describe 'Create a new author' do
    it 'Should creates a new instance of Author' do
      expect(author).to be_a(Author)
    end
    it 'Should have an author first name and last name' do
      expect(author.first_name).to eq('Zabih')
      expect(author.last_name).to eq('Noori')
    end
  end
  describe 'items array' do
    it 'Should be empty' do
      expect(author.items.length).to be(0)
    end
    it 'Should add an item' do
      author.add_item(item)
      expect(author.items.length).to be(1)
    end
  end
end
