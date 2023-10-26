require './classes/label'
​
module AddFeatures
  def create_author
    print 'Enter Author first name: '
    author_first_name = gets.chomp
    print 'Enter Author last name: '
    author_last_name = gets.chomp
    ​
    new_author = Author.new(author_first_name, author_last_name)
    @authors << new_author
    new_author
  end
  ​
  def create_genre
    print 'Enter the Gender: '
    genre_name = gets.chomp
    new_genre = Genre.new(genre_name)
    @genres << new_genre
    new_genre
  end

  def create_label
    print 'Enter the Label title: '
    label_title = gets.chomp
    print 'Enter the Label color: '
    label_color = gets.chomp
    ​
    new_label = Label.new(label_title, label_color)
    @labels << new_label
    new_label
  end
end
