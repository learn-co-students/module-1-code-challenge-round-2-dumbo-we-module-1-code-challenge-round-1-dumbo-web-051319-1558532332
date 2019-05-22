class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|rev| rev.restaurant == self}
  end

  def customers
    reviews.map { |rev| rev.author }.uniq
  end

  def average_star_rating
    reviews.map { |rev| rev.rating }.sum/reviews.count
  end

  def longest_review
    reviews.max_by {|rev| rev.content.length}.content
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find {|res| res.name == name}  
  end

end
