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
    #Review(customer, restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def get_reviews
    Review.all.select{ |review| review.customer == self }
  end

  def num_reviews
    Review.all.select{ |review| review.customer == self }.count
  end

  def restaurants
    get_reviews.map{|review| review.restaurant}.uniq
  end

  def self.find_by_name(name)
    all.map do |customer|
      if customer.full_name == name
        return customer
      else
        return nil
      end
    end
  end

  def self.find_all_by_first_name(name)
    all.map do |customer|
      if customer.first_name == name
        return customer
      else
        return nil
      end 
    end
  end

  def self.all_names
    all.map{|customer| customer.full_name}
  end

end
