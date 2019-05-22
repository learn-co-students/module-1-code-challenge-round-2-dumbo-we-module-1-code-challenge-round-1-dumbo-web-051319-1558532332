class Customer
  attr_reader :first_name, :last_name

  @all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @all < self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @all
  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(content, rating)
  end

  cust_reviews = []

  def num_reviews



  end

  def self.find_by_name(name)
    @all.find do |cust_name|
      self == cust_name
  end
end


def self.find_by_name(name)
  @all.detect do |fullname|
    self == fullname
  end
end

def self.find_all_by_first_name(name)
  @all.select do |name|
    name == self.first_name
    end
  end


def self.all_names
  @all.select do |name|
    name == self.full_name
  end
  end




end
