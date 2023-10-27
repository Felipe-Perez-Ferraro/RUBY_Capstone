require './classes/music_album'
describe MusicAlbum do
  let(:music_album) { MusicAlbum.new('26/10/2023', 'True', 888) }
  describe 'Create a new music_album' do
    it 'Should creates a new instance of MusicAlbum' do
      expect(music_album).to be_a(MusicAlbum)
    end
    it 'Should have a publish date and a on_spotify check' do
      expect(music_album.publish_date).to eq('26/10/2023')
      expect(music_album.on_spotify).to eq('True')
    end
  end
  describe 'can_be_archived? method' do
    it 'Should return true' do
      music_album.on_spotify = true
      music_album.publish_date = '26/10/2000'
      expect(music_album.can_be_archived?).to eq(true)
    end
    it 'Should return false' do
      music_album.publish_date = '26/10/2023'
      expect(music_album.can_be_archived?).to eq(false)
    end
  end
end
