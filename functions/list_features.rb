module ListFeatures
  def list_authors
    if @authors.empty?
      puts 'No authors found!'
    else
      @authors.each_with_index do |author, index|
        puts "#{index}) Id: #{author.id} | First Name: #{author.first_name} | Last Name: #{author.last_name}"
      end
    end
  end
​
  def list_genres
    if @genres.empty?
      puts 'No genres found!'
    else
      @genres.each_with_index do |genre, index|
        puts "#{index}) Id: #{genre.id} | Genre: #{genre.name}"
      end
    end
  end
​
  def list_labels
    if @labels.empty?
      puts 'There is no labels yet...'
    else
      @labels.each_with_index do |label, index|
        puts "#{index}) LabelId: #{label.id} | Title: #{label.title} | Color: #{label.color}"
      end
    end
  end
end