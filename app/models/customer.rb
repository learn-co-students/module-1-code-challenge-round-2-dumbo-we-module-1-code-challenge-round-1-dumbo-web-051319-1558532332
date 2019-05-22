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

  def add_review(restaurant, comments, rating)
    Review.new(self, restaurant, comments, rating)
  end

  def num_reviews
    num = Review.all.select do |review|
      review.customer == self
    end
    num.length
  end

  def restaurants
    res_arr = Review.all.map do |review|
      if review.customer == self
        review.restaurant
      end
    end
    res_arr.compact
  end

  # def self.find_by_name(name_str)
  #   all.find {|customer| customer}
  # end

  def self.all_names
    yyy = all.map do |customer|
      # binding.pry
      customer.full_name
    end
    binding.pry
  end

end
