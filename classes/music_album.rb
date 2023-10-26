require_relative 'item'
​
class MusicAlbum < Item
  attr_accessor :publish_date, :on_spotify, :genre_id, :genre_name, :id, :author, :label
​
  def initialize(publish_date, on_spotify, genre_id, genre_name, _id = rand(1..900))
    super(publish_date)
    @id = id
    @on_spotify = on_spotify
    @genre_id = genre_id
    @genre_name = genre_name
  end 
​
  def can_be_archived?
    super && @on_spotify
  end
end