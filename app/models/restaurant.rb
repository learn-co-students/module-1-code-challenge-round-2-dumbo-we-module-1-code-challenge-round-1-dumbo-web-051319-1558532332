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

  def self.find_by_name(name)
    self.all.select do |restaurant| 
      restaurant.name == name
    end.first #I can't tell if this is bringing me the first McDonals or not
              #And I couldn't figure out how to check it out with pry
  end 


end
