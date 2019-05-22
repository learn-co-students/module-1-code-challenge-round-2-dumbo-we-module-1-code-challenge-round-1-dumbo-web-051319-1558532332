class Customer
  attr_reader :first_name, :last_name, :fullname
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @fullname = self.full_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, self, rating)
  end

  def num_reviews
    # get all my reviews (array)
    # count the reviews in the array
    my_reviews = Review.all.select {|post| post.customer == self}
    my_reviews.count
  end

  def restaurants
    # go into my reviews and get the restaurant i reviewed it for
    the_reviews = Review.all.select {|post| post.customer == self}
    my_restaurants = the_reviews.map {|x| x.restaurant}
    my_restaurants.uniq
  end
#### Class Methods ####

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.select {|x| x.fullname == name}
  end

  def self.find_all_by_first_name(first)
    self.all.select {|x| x.first_name == first}
  end
  def self.all_names
    self.all.map {|x| x.fullname}
  end

end
