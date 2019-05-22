class Restaurant
  attr_reader :name
    @@all = []
  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def customers
    Review.all.select{|review_all| review_all.restaurant == self }.uniq
  end

  def reviews
    Review.all.select{|review_all| review_all.restaurant == self }.map{|matching_reviews| matching_reviews.content}
  end

  def average_star_rating
    Review.all.select{|review_all| review_all.restaurant == self }.map{|matching_reviews| matching_reviews.rating}
    #if you just wanted the average value number
    #convert it into an integer with .toi
    #then tack on this at the end:
    #.inject{ |sum, el| sum + el }.to_f / arr.size

  end

  def longest_review
    reviews.max_by(&:length)
  end

end
