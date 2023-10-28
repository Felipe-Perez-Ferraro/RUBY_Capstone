require_relative 'item'

class MusicAlbum < Item
  attr_accessor :publish_date, :on_spotify, :id, :author, :label

  def initialize(publish_date, on_spotify, id = rand(1..900))
    super(publish_date)
    @id = id
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end
end
