class App
  def run
    puts "\n-- Welcome to the Capstone Project! --"

    loop do
      options_menu
    end
  end

  def display_menu
    puts " \n -- Options Menu --"
    puts '1 - List Items (Books / Music Albums / Games)'
    puts '2 - List Features (Genres / Labels / Authors)'
    puts '3 - Add an Item (Books / Music Albums / Games)'
    puts '4 - Exit'
    print 'Enter your choice: '
  end

  def options_menu
    display_menu
    user_choice = gets.chomp.to_i

    case user_choice
    when 1
      items_menu
    when 2
      features_menu
    when 3
      add_menu
    when 4
      exit_app
    else
      puts 'Invalid option!'
    end
  end

  def items_menu
    puts "\n -- List Items Menu --"
    puts '1 - List Books'
    puts '2 - List Music Albums'
    puts '3 - List Games'
    puts '4 - Go Back to the Menu Options'
    print 'Enter your choice: '
    user_choice = gets.chomp.to_i
    case user_choice
    when 1
      puts 'all books'
    when 2
      puts 'all music'
    when 3
      puts 'all games'
    when 4
      options_menu
    else
      puts 'Invalid option!'
    end
  end

  def features_menu
    puts "\n -- List Features Menu --"
    puts '1 - List Genres'
    puts '2 - List Labels'
    puts '3 - List Authors'
    puts '4 - Go Back to the Menu Options'
    print 'Enter your choice: '
    user_choice = gets.chomp.to_i
    case user_choice
    when 1
      puts 'all Genres'
    when 2
      puts 'all Labels'
    when 3
      puts 'all Authors'
    when 4
      options_menu
    else
      puts 'Invalid option!'
    end
  end

  def add_menu
    puts "\n -- Add Items Menu --"
    puts '1 - Add new Book'
    puts '2 - Add Music Album'
    puts '3 - Add new Game'
    puts '4 - Go Back to the Menu Options'
    print 'Enter your choice: '
    user_choice = gets.chomp.to_i
    case user_choice
    when 1
      puts 'add book'
    when 2
      puts 'add music album'
    when 3
      puts 'add new game'
    when 4
      options_menu
    else
      puts 'Invalid option!'
    end
  end

  def exit_app
    puts "\nThank you for using our app!"
    exit
  end
end
