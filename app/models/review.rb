class Review
  attr_reader :customer, :restaurant
  attr_accessor :content, :rating
  @@all = []

      def initialize(customer,restaurant,rating,content)
        @customer = customer
        @restaurant = restaurant
        @content = content
        rating = 5 if rating > 5
        rating = 0 if rating < 0
        @rating = rating
        @@all << self
      end

      def self.all
        @@all
      end

end
