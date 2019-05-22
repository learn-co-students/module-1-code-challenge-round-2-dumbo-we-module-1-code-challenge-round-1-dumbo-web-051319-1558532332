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
    customers = []
    Review.all.select do |review|
      if review.restaurant == self
        customers << review.customer
      end
    end
    customers.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    total = 0
    # iterate through all of the reviews for the specific restaurant
    reviews.map {|review| total += review.rating}
    # through each restaurant object, get the rating
    # add that rating to a running total
    average = total / reviews.count
    # once total is calculated, divide by the amount of reviews
  end

  def longest_review
    review_contents = []
    # iterate through all of the reivews for the specific restaurant (return of reviews method)
    reviews.map {|review| review_contents << review.content}
    # through each review, get just the contents of each review
    # sort the contents by length and return the longest one
    review_contents = review_contents.sort_by {|x| x.length}
    # return the longest review
    review_contents[-1]

  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant == self}
  end

  def self.find_by_name(name)
    # iterate through all of the restaurants
    all.find {|restaurant| restaurant.name == name}
    # find the first restaurant to match the given string
    # return that restaurant object
  end

end
