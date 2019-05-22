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

  def customers
    arr = []
    Review.all.select{|review| arr << review.customer if review.restaurant == self}
    arr.uniq
  end

  def reviews
    arr = []
    # Not sure if review content or review instances so i did instances
    Review.all.select {|review| arr << review if review.restaurant == self}
    arr
  end

  def average_star_rating
    ratings = []
    num_of_reviews = reviews.length
    reviews.select{ |r| ratings << r.rating}
    sum_of_ratings = ratings.inject(0){|sum,x| sum + x }
    sum_of_ratings / num_of_reviews.to_f
  end

  def longest_review
    # reviews[0].content.length
    binding.pry
  end


end
