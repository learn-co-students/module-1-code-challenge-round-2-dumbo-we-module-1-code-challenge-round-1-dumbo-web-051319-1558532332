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

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    i = 0
    Review.all.select {|review| i+= 1 if review.customer == self}
  end

  def restaurants
    arr = []
    Review.all.select{|review| arr << review.restaurant if review.customer == self}
    arr.uniq
  end



  ## CLASS METHODS
  def self.all
    @@all
  end

  def self.all_names
    full_names = []

  end

end
