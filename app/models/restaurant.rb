class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    reviews.map{|review| review.rating}.inject(0, :+) / reviews.count
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def review_content
    self.reviews.map {|review| review.content}
  end

  def longest_review
    review_content.sort {|review| review.length}.first
  end
end
