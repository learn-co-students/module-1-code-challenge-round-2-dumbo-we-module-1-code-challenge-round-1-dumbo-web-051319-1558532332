class Customer
  @@all = []
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(content, rating, restaurant)
    Review.new(content, rating, restaurant, self)
  end

  def customer_reviews
     Review.all.select do |review|
      review.customer.full_name == self.full_name
      # binding.pry
    end 
  end

  def num_reviews
    customer_reviews.count
  end

  def restaurants
    customer_reviews.map do |review|
      # binding.pry
      review.restaurant.name
    end.uniq
  end 

  def self.find_by_name(name)
    Customer.all.find do |customer|
      customer.full_name == name
      # binding.pry
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.find_all do |customer|
      name.full_name == name
      # binding.pry
    end
  end


end
