class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end
#comeback
  def num_reviews
    total_num = Review.all.map {|review| review.review_num}
    total_num.sum
    # Review.all.select {|review| review.review_num.sum}
  end

  def restaurants
    res_review = Review.all.select{|review| review.customer}
    res_review.map do |review|
      review.restaurant
    end.uniq
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all_names
  #  @@all.map {|name| name.customer == self }
    @@all.map(&:name)
  end

#given a string of a **full name**, returns the **first customer** whose full name matches
  def self.find_by_name(name)
    all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    all.map{|customer| customer.first_name}
  end

  def self.all_names
    all.map{|customer| customer.full_name}
  end

end
Customer.all
