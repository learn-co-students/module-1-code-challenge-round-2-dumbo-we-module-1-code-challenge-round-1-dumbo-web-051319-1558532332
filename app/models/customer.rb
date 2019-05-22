require "pry"
class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(self,restaurant,content,rating)
  end

  def num_reviews
    review_arr = []
    Review.all.each do |review|
      if self == review.customer
        review_arr << review
      end
    end
    return review_arr.count
  end

  def restaurants
    restaurant_arr = []
    Review.all.each do |review|
      if self == review.customer
        restaurant_arr << review.restaurant
      end
    end
    return restaurant_arr.uniq
  end

  def self.find_by_name(given_name)
    full_name_arr = []
    self.all.each do |name|
      # binding.pry
    if name.full_name == given_name
      full_name_arr << name.full_name
    end
  end
    full_name_arr[0]
  end

  def self.find_all_by_first_name(given_name)
    first_name_arr = []
    self.all.each do |name|
      # binding.pry
    if name.first_name == given_name
      first_name_arr << name
    end
  end
    first_name_arr
  end

  def self.all_names
    full_name_arr = []
    self.all.each do |name|
        full_name_arr << name.full_name
      end
      full_name_arr
  end

end
