module ListFeatures
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
