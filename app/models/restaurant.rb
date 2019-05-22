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
    reviews.map{|review| review.customer}.uniq
  end
  def average_star_rating
    (reviews.map{|review| review.rating}.sum.to_f / reviews.count).round(2)
  end
  def longest_review
    reviews.sort_by{|review| review.content.length}[-1].content
  end
  def self.find_by_name(name)
    all.select{|restaurant| restaurant.name == name}[0]
  end
end
