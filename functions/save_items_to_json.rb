require 'json'
require './classes/book'
require './classes/game'

module SaveItemsToJson
  def save_books_to_json
    File.open('./books.json', 'w') do |file|
      file.puts @books.map { |book|
        { 'id' => book.id,
          'publish_date' => book.publish_date,
          'publisher' => book.publisher,
          'cover_state' => book.cover_state,
          'author_id' => book.author.id,
          'genre_id' => book.genre.id,
          'label_id' => book.label.id, }
      }.to_json
    end
  end

  def save_games_to_json
    File.open('./games.json', 'w') do |file|
      file.puts @games.map { |game|
        {
          'id' => game.id,
          'publish_date' => game.publish_date,
          'multiplayer' => game.multiplayer,
          'last_played_at' => game.last_played_at,
          'author_id' => game.author.id,
          'genre_id' => game.genre.id,
          'label_id' => game.label.id,
        }
      }.to_json
    end
  end

  def save_music_albums_to_json
    File.open('./music_albums.json', 'w') do |file|
      file.puts @music_albums.map { |music_album|
        {
          'id' => music_album.id,
          'publish_date' => music_album.publish_date,
          'on_spotify' => music_album.on_spotify,
          'author_id' => music_album.author.id,
          'genre_id' => music_album.genre.id,
          'label_id' => music_album.label.id,
        }
      }.to_json
    end
  end
end
