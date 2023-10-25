module ListItems
  def list_books
    if @books.empty?
      puts 'There is any book yet...'
    else
      @books.each_with_index do |book, index|
        print "\n#{index}) BookId: #{book.id} | Publish Date: #{book.publish_date} | Cover State: #{book.cover_state} |"
        print " Label: #{book.label.title} | Publisher: #{book.publisher}\n"
      end
    end
  end

  def list_games
    if @games.empty?
      puts 'There is any game yet...'
    else
      @games.each_with_index do |game, index|
        print "\n#{index}) GameId: #{game.id} | Publish Date: #{game.publish_date} | "
        print "Multiplayer: #{game.multiplayer} | Last Played: #{game.last_played_at} | "
        print "Label: #{game.label.title}\n"
      end
    end
  end
end