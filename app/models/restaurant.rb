class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    customer_arr = []
    Review.all.each do |review|
      if self == review.restaurant
        customer_arr << review.customer
      end
    end
    return customer_arr.uniq
  end

  def reviews
    review_arr = []
    Review.all.each do |review|
      if self == review.restaurant
        review_arr << review
      end
    end
    review_arr
  end

  def average_star_rating
    average= []
    Review.all.each do |review|
      if self == review.restaurant
        average << review.rating
      end
    end
    average.inject{|sum,x|sum+x}.to_f/average.count
  end

  def longest_review
    review_arr = []
    Review.all.each do |review|
      if self == review.restaurant
        review_arr << review.rating
      end
    end
    review_arr.max {|x,y| x <=> y}
  end

  def self.find_by_name(given_name)
    name_arr = []
    self.all.each do |restaurant|
      if given_name == restaurant.name
        name_arr << restaurant
      end
    end
    name_arr[0]
  end

end
