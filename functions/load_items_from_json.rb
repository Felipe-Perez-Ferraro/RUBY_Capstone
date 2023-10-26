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
      find_features(book['label_id'], new_book)
      @books << new_book
    end
  end

  def load_games_from_json
    return unless File.exist?('./games.json')

    file = File.read('./games.json')
    game_hash = JSON.parse(file)
    game_hash.each do |game|
      new_game = Game.new(game['publish_date'], game['multiplayer'], game['last_played_at'], game['id'])
      find_features(game['label_id'], new_game)
      @games << new_game
    end
  end

  def find_features(label_id, item)
    find_label_id = @labels.find { |el| el.id == label_id }
    item.add_label(find_label_id)
  end
end
