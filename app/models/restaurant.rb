class Restaurant

  @@all = []

  attr_reader :name, :content, :rating

  def initialize(name, content, rating)
    @name = name
    @content = content
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    Customer.all.select { |customer| customer.restaurant == self}.uniq
  end

  def reviews
    Review.all.select { |review| review.restaurant == self}
  end

  def average_star_rating
    reviews.average
  end

  def find_by_name(name)
    self.all.select { |restaurant| restaurant.name == self}
  end



end
