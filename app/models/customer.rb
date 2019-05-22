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

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Restaurant.new(restaurant, content, rating)
  end

  def num_reviews
    Review.all.select { |review| review.customer == self}.count
  end

  def restaurants
    reviews_customer = Review.all.select { |review| review.customer == self}
    reviews_customer.map { |review| review.restaurant}.uniq
  end

  def find_by_name(name)
  end

  def all_names
    self.full_name
  end
end
