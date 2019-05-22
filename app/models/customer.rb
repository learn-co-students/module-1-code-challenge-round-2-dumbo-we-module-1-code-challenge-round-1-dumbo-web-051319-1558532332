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

  def self.all_names
    self.all.map do |customer| customer.full_name
    end
  end

  def self.find_by_name(name)
    self.all.select do |customer| 
      customer.full_name == name
    end.first
  end 
  
  #FAILED
  def self.find_all_by_first_name(name)
    self.all.map do |customer| 
      customer.first_name == name
    end
  end 

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end 

  # def customer_review
  #   Review.all.select do |review| reivew.customer == self
  #   end 
  # end 

  # def restaurants
  #   customer-review = 

  #   end.uniq 
  # end 

end
