class Customer


  attr_reader :first_name, :last_name, :restaurant
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def restaurant
    my_restaurant = Review.all.select {|review| review.customer == self}
    my_restaurant.map {|review| review.restaurant}.uniq
  end

  def self.find_by_name(name)
    Customer.all.find do |customer|
      if (name == self.name){
        return name
      }

    end
  end
  end


end
