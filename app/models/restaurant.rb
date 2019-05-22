class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    Review.all.select do |review|
      review.customers.name == self.name
      binding.pry 
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self.restaurant
      # binding.pry
    end
  end

  def average_star_rating
    
  end

  def  longest_review 
    
  end

  def self.find_by_name(name)

  end


end
