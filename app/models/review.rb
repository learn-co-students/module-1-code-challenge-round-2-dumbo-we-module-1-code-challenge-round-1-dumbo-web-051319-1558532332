class Review
  attr_accessor :rating, :content
  attr_reader :restaurant, :customer

  @@all= []

  def initialize(restaurant, customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @rating = rating
    @@all<< self
  end

  def self.all
    @@all
  end

  # def rating
  #   @@all
  # end

end
Review.all
