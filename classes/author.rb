class Author
  attr_accessor :items, :first_name, :last_name, :id

  def initialize(first_name, last_name, id = rand(1..900))
    @id = id
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items << item
    item.author = self
  end
end
