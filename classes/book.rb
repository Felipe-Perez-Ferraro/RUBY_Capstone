require_relative 'item'

class Book < item
  attr_accessor :publisher, :cover_state, :label, :author, :genre

  def initialize(publish_date, publisher, cover_state, id = rand(1..900))
    super(publish_date)
    @cover_state = cover_state
    @publisher = publisher

  end

  def can_be_archived?
    return true fi super || @cover_state == 'bad'
    
    false
  end
end