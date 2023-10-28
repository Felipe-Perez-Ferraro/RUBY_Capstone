require 'json'
require './classes/label'

module SaveFeaturesToJson
  def save_authors_to_json
    File.open('./authors.json', 'w') do |file|
      file.puts @authors.map { |author|
        {
          'id' => author.id,
          'first_name' => author.first_name,
          'last_name' => author.last_name
        }
      }.to_json
    end
  end

  def save_genres_to_json
    File.open('./genres.json', 'w') do |file|
      file.puts @genres.map { |genre|
        {
          'id' => genre.id,
          'name' => genre.name
        }
      }.to_json
    end
  end

  def save_labels_to_json
    File.open('./labels.json', 'w') do |file|
      file.puts @labels.map { |label|
        {
          'id' => label.id,
          'title' => label.title,
          'color' => label.color
        }
      }.to_json
    end
  end
end
