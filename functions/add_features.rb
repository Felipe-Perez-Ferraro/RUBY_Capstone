require './classes/label'

module AddFeatures
  def create_label
    print 'Enter the Label title: '
    label_title = gets.chomp
    print 'Enter the Label color: '
    label_color = gets.chomp

    new_label = Label.new(label_title, label_color)
    @labels << new_label
    new_label
  end
end
