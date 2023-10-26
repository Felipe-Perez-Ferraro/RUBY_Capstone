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
          'label_id' => book.label.id }
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
          'label_id' => game.label.id
        }
      }.to_json
    end
  end
end
