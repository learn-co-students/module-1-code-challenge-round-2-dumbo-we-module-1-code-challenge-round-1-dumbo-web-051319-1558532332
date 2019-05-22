class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  def customers
    res_review = Review.all.select{|review| review.customer}
    res_review.map do |review|
      review.customer
    end.uniq

  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def average_star_rating
      Review.all.inject {|result, i| result + i } / rating.size
  end

  def longest_review
    reviews.max_by{|review| review.content.length}
  end

  # def self.find_by_name(name)
  #   all.find{|restaurant| restaurant.name == self}
  # end

  def self.all
    @@all
  end
end
Restaurant.all
