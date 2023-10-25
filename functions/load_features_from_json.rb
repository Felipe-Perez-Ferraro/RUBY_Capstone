require 'json'
require './classes/label'

module LoadFeaturesFromJson
  def load_labels_from_json
    return unless File.exist?('./labels.json')

    labels_file = File.read('./labels.json')
    labels_data = JSON.parse(labels_file)
    labels_data.each do |label|
      @labels << Label.new(label['title'], label['color'], label['id'])
    end
  end
end
