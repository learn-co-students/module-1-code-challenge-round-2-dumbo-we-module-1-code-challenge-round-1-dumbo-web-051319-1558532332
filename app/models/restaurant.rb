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
  def customer

    reviews.map {|review| review.customer}.uniq
  end


  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      if name == self.name
        return name
      end
    end

  end

end
