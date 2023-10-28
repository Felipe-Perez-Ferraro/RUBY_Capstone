require './classes/item'
require './classes/label'

describe Label do
  let(:label) { Label.new('New', 'Green', 888) }
  let(:item) { Item.new('26/10/2023') }

  describe 'Create a new label' do
    it 'Should creates a new instance of Label' do
      expect(label).to be_a(Label)
    end

    it 'Should have a title & color' do
      expect(label.title).to eq('New')
      expect(label.color).to eq('Green')
    end
  end

  describe 'items array' do
    it 'Should be empty' do
      expect(label.items.length).to be(0)
    end
  end
end
