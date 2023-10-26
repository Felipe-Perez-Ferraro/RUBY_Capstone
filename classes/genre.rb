class Genre
  attr_accessor :name, :items, :id

  def initialize(name, id = rand(1..900))
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
