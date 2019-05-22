class Review
  attr_reader :customer, :restaurant, :rating, :content

  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating.clamp(1,5)
    @@all << self
  end

  def self.all
    @@all
  end
end

class Numeric
  def clamp min, max
    [[self, max].min, min].max
  end
end
