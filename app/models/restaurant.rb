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
    Review.all.select{ |review| review.restaurant == self }
  end

  def customers
    get_reviews.map{ |review| review.customer}.uniq
  end

  def sum_star_rating
    total = 0
    reviews.each{ |review| total += review.rating }
    total
  end

  def average_star_rating
    sum_star_rating / reviews.length
  end

  def longest_review
    reviews.max_by {|review| review.content.length}
  end

  def self.get_names(name)
    all.map do |restaurant|
      restaurant.name
    end
  end

  def self.find_by_name(name)
    all.map do |restaurant|
      if restaurant.name == name
        return restaurant
      else
        return nil
      end
    end
  end

end
