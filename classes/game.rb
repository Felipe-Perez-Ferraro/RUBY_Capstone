require_relative 'item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at, :author, :genre, :label

  def initialize(publish_date, multiplayer, last_played_at, _id = rand(1..900))
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super && Date.today.prev_year(2) > Date.parse(@last_played_at)
  end
end
