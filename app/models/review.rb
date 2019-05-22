class Review
  attr_accessor :content, :customer, :rating
  attr_reader :restaurant
  @@all = []

  def initialize(restaurant, content, customer, rating)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end
