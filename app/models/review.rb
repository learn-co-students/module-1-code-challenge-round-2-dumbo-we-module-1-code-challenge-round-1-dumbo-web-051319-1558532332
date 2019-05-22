class Review
  attr_reader :author, :restaurant
  attr_accessor :rating, :content

  @@all = []

  def initialize(author, restaurant, content, rating)
    @author  = author # customer
    @restaurant = restaurant
    @content = content #string
    @rating = rating.clamp(1,5) #integer 1-5
    @@all << self
  end

  def self.all
    @@all
  end

end
