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

  def customers
    revs = Review.all.map do |review|
      if review.restaurant == self
        review.customer
      end
    end
      revs.compact.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self }
  end

  def average_star_rating
    ratings = reviews.map {|review| review.rating.to_f}
    #binding.pry
    ratings.inject {|s, n| s + n} / ratings.length
  end

  def longest_review
    review_hsh = {}
    reviews.each do |review|
      review_hsh[review.comments] = review.comments.length
    end
    review_hsh.max_by {|k, v| v}
  end

end
