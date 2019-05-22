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
    Review.all.select{|review| review.customer == self}
  end

  def num_reviews
    self.reviews.count
  end

  def restaurants
    self.reviews.map{|review| review.restaurant}.uniq
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.first_name == name.split[0] && customer.last_name == name.split[1]
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map {|customer| "#{customer.first_name} #{customer.last_name}"}
  end

  def self.all
    @@all
  end
end
