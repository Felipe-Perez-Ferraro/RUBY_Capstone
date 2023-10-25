require_relative 'add_features'
require './classes/book'
require './classes/game'
require './classes/label'

module AddItems
  include AddFeatures
  def add_new_book
    print 'Publish Date? '
    publish_date = gets.chomp
    print 'Enter the book Publisher: '
    book_publisher = gets.chomp
    cover_state = cover_state_func
    label = create_label
    new_book = Book.new(publish_date, book_publisher, cover_state)
    new_book.add_label(label)
    @books << new_book
    puts 'New Book created!'
  end

  def cover_state_func
    loop do
      puts 'How is the book cover state? ([G]ood/[B]ad)'
      print 'Enter your option: '
      cover_state = gets.chomp.upcase
      if cover_state == 'G'
        return true
      elsif cover_state == 'B'
        return false
      else
        puts 'Something gone wrong! Please type G or B'
      end
    end
    cover_state
  end

  def add_new_game
    print 'Publish Date? '
    publish_date = gets.chomp
    print 'Last played at? '
    last_played = gets.chomp
    multiplayer = multiplayer_func
    label = create_label
    new_game = Game.new(publish_date, multiplayer, last_played)
    new_game.add_label(label)
    @games << new_game
    puts 'New Game created!'
  end

  def multiplayer_func
    puts 'Is this a Multiplayer game? ([Y]es / [N]o)'
    print 'Enter your option: '
    multiplayer = gets.chomp.upcase
    if multiplayer == 'Y'
      return true
    elsif multiplayer == 'N'
      return false
    else
      puts 'Something gone wrong! Please type Y or N'
      multiplayer = false
    end

    multiplayer
  end
end
