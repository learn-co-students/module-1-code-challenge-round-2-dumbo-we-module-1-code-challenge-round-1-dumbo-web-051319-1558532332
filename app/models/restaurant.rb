class Restaurant
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      # binding.pry
      review.restaurant.name == self.name
    end
  end 

  def customers
    reviews.map do |review|
      review.customer.first_name 
      # binding.pry
    end.uniq
  end

  def average_star_rating
    ratings = 0
    count = 0
    reviews.map do |review|
      # binding.pry
      ratings += review.rating
      count += 1
    end 
    averag_rating = ratings/count
  end

  

  def self.find_by_name(name)
    arr = []
    Restaurant.all.find do |restaurant|
      # binding.pry
      restaurant.name == name
      # binding.pry
    end
    
  end

  def longest_review
    arr = reviews.map do |rating|
      rating.content
      # binding.pry
    end

    arr.each do |content|
            binding.pry
            if content.count 
      
    end

  end

  

end
