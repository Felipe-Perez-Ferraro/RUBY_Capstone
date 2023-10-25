class Label
  attr_accessor :id, :title, :color, :items

  def initialize(title, color, id = rand(1..900))
    @id = id
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = self
  end
end