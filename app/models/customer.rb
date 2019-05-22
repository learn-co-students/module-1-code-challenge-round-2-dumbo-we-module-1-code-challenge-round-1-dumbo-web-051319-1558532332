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

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
  end

  def num_reviews
  end

  def restaurant
  end

  def self.find_by_name(name)
    self.
  end

  def self.find_all_by_first_name(name)
    self.all.map do |first_names|
    
  end

  def self.all_names
    self.all_names
  end
end
