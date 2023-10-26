require 'json'
require './classes/book'
require './classes/game'

module LoadItemsFromJson
  def load_books_from_json
    return unless File.exist?('./books.json')

    file = File.read('./books.json')
    book_hash = JSON.parse(file)
    book_hash.each do |book|
      new_book = Book.new(book['publish_date'], book['publisher'], book['cover_state'], book['id'])
      find_features(book['author_id'], book['genre_id'], book['label_id'], new_book)
      @books << new_book
    end
  end

  def load_games_from_json
    return unless File.exist?('./games.json')

    file = File.read('./games.json')
    game_hash = JSON.parse(file)
    game_hash.each do |game|
      new_game = Game.new(game['publish_date'], game['multiplayer'], game['last_played_at'], game['id'])
      find_features(game['author_id'], game['genre_id'], game['label_id'], new_game)
      @games << new_game
    end
  end

  def load_music_albums_from_json 
    return unless File.exist?('./music_albums.json')

    file = File.read('./music_albums.json')
    music_album_hash = JSON.parse(file)
    music_album_hash.each do |music_album|
      new_music_album = MusicAlbum.new(music_album['publish_date'], music_album['on_spotify'], music_album['id'])
      find_features(music_album['author_id'], music_album['genre_id'], music_album['label_id'], new_music_album)
      @music_albums << new_music_album
    end
  end

  def find_features(author_id, genre_id, label_id,  item)
    find_author_id = @authors.find { |el| el.id == author_id }
    item.add_author(find_author_id)
    find_genre_id = @genres.find { |el| el.id == genre_id }
    item.add_genre(find_genre_id)
    find_label_id = @labels.find { |el| el.id == label_id }
    item.add_label(find_label_id)
  end
end