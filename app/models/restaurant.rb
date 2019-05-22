class Restaurant
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self }
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    reviews.map {|review| review.rating}.reduce(:+).to_f / self.reviews.count
  end

  def longest_review
    review_content = reviews.map {|review| review.content}
    # find array with longest count
    # review_content.map {|content| content.length}.sort.reverse.first
    review_content.sort {|a,b| b.length <=> a.length}.first
  end

  def self.find_by_name(name)
    all.find {|restaurant| restaurant.name == name}
  end

end
