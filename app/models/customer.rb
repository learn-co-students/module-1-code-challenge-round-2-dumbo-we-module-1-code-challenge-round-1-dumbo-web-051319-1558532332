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

  def reviews
    Review.all.select {|rev| rev.author == self}
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    reviews.map { |rev| rev.restaurant }.uniq
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find {|cus| cus.full_name == name}
  end

  def self.find_all_by_first_name(name)
    all.select { |cus| cus.first_name == name }
  end

  def self.all_names
    all.map { |cus| cus.full_name }
  end

end
