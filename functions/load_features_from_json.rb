require 'json'
require './classes/author'
require './classes/label'
require './classes/genre'

module LoadFeaturesFromJson
  def load_authors_from_json
    return unless File.exist?('./authors.json')

    authors_file = File.read('./authors.json')
    authors_data = JSON.parse(authors_file)
    authors_data.each do |author|
      @authors << Author.new(author['first_name'], author['last_name'], author['id'])
    end
  end

  def load_genres_from_json
    return unless File.exist?('./genres.json')

    genres_file = File.read('./genres.json')
    genres_data = JSON.parse(genres_file)
    genres_data.each do |genre|
      @genres << Genre.new(genre['name'], genre['id'])
    end
  end
  
  def load_labels_from_json
    return unless File.exist?('./labels.json')

    labels_file = File.read('./labels.json')
    labels_data = JSON.parse(labels_file)
    labels_data.each do |label|
      @labels << Label.new(label['title'], label['color'], label['id'])
    end
  end
end