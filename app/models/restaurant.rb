class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.map{|review| review.customer}.uniq
  end

  def average_star_rating
    self.reviews.map{|review| review.rating}.reduce(0){|sum, num| sum += num} / self.reviews.count
  end

  def longest_review
    self.reviews.map{|review| review.content}.max_by(&:length)
  end

  def self.find_by_name(name)
    self.all.find{|restaurant| restaurant.name == name}
  end

  def self.all
    @@all
  end
end
