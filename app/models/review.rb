class Review
    @@all = []
    attr_reader  :content, :rating, :restaurant, :customer
  
    def initialize(content, rating, restaurant, customer)
      @content = content
      @rating = rating.to_i
      @restaurant = restaurant
      @customer = customer
      @@all << self
    end
  
    def self.all
      @@all
    end
  
  end