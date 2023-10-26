require './classes/item'
require './classes/author'
require './classes/genre'
require './classes/label'

describe Item do
  let(:item) { Item.new('26/10/2000') }
  let(:author) { Author.new('Zabi', 'Perez', 800) }
  let(:genre) { Genre.new('Comedy', 800) }
  let(:label) { Label.new('New', 'Green', 800) }

  describe 'Create a new item' do
    it 'Should creates a new instance of Item' do
      expect(item).to be_a(Item)
    end

    it 'Should have a publish date' do
      expect(item.publish_date).to eq('26/10/2000')
    end
  end

  describe 'It should add features' do
    it 'Sholud has no items inside the array' do
      expect(author.items.length).to be(0)
      expect(genre.items.length).to be(0)
      expect(label.items.length).to be(0)
    end

    it 'Should add an Author' do
      item.add_author(author)
      expect(author.items.length).to be(1)
    end

    it 'Should add a Genre' do
      item.add_author(genre)
      expect(genre.items.length).to be(1)
    end

    it 'Should add a Label' do
      item.add_author(label)
      expect(label.items.length).to be(1)
    end
  end

  describe 'move_to_archive method' do
    it 'Should set @archived to false' do
      item.publish_date = '26/10/2023'
      expect { item.move_to_archive }.not_to(change { item.archived })
    end

    it 'Should set @archived to true' do
      item.publish_date = '26/10/2010'
      expect { item.move_to_archive }.to change { item.archived }.from(false).to(true)
    end
  end

  describe 'can_be_archived? method' do
    it 'Should return true' do
      expect(item.can_be_archived?).to be(true)
    end

    it 'Should return false' do
      item.publish_date = '26/10/2024'
      expect(item.can_be_archived?).to be(false)
    end
  end
end
