require './classes/book'

describe Book do
  let(:book) { Book.new('9/12/2000', 'Felipe', 'good', 888) }

  describe 'Create a new book' do
    it 'Should creates a new instance of Book' do
      expect(book).to be_a(Book)
    end

    it 'Should have a publish date / publisher & cover_state' do
      expect(book.publish_date).to eq('9/12/2000')
      expect(book.publisher).to eq('Felipe')
      expect(book.cover_state).to eq('good')
    end
  end

  describe 'can_be_archived? method' do
    it 'Should return true' do
      expect(book.can_be_archived?).to eq(true)
    end

    it 'Should return false' do
      book.publish_date = '26/10/2023'
      expect(book.can_be_archived?).to eq(false)
    end
  end

  describe 'Checking the cover state...' do
    it 'Should return true' do
      expect(book.cover_state).to eq('good')
    end

    it 'Should return true' do
      book.cover_state = 'bad'
      expect(book.cover_state).to eq('bad')
    end
  end
end
