require 'json'
require './classes/label'

module SaveFeaturesToJson
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
