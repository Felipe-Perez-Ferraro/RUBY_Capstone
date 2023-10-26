module ListItems
  def list_books
    if @books.empty?
      puts 'There are no books yet...'
    else
      @books.each_with_index do |book, index|
        puts "\n#{index}) BookId: #{book.id} | Publish Date: #{book.publish_date} |"\
             " Cover State: #{book.cover_state} | " \
             "Label: #{book.label.title} | Publisher: #{book.publisher}"
      end
    end
  end

  def list_games
    if @games.empty?
      puts 'There are no games yet...'
    else
      @games.each_with_index do |game, index|
        puts "\n#{index}) GameId: #{game.id} | Publish Date: #{game.publish_date} "\
             "| Multiplayer: #{game.multiplayer} | " \
             "Last Played: #{game.last_played_at} | Label: #{game.label.title}"
      end
    end
  end

  def list_music_albums
    if @music_albums.empty?
      puts 'There are no music albums...'
    else
      @music_albums.each_with_index do |music_album, index|
        puts "\n#{index}) Id: #{music_album.id} | Publish Date: #{music_album.publish_date} |"\
             " On Spotify: #{music_album.on_spotify}"
      end
    end
  end
end
