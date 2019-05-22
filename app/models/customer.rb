class Customer
  @@all =[]

  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    reviews.map {|review| review.restaurant}.uniq
  end

  def self.all
    @@all
  end

  def self.all_names
    all.map {|customer| customer.full_name}
  end

  def self.find_by_name(full_name_string)
    # all.find {|customer| customer.first_name == name}
  end


  def self.find_all_by_first_name(name)
    all.find_all {|customer| customer.first_name == name}
  end

end

#
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
