class Review

  attr_reader :customer, :restaurant, :comments, :rating
  @@all = []

  def initialize(customer, restaurant, comments, rating)
    @customer = customer
    @comments = comments
    @rating = rating
    @restaurant = restaurant
    @@all << self
  end


  def self.all
    @@all
  end

end
