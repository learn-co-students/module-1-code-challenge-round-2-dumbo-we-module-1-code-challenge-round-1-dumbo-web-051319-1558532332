require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Customers
joe_jackson = Customer.new("Joe", "Jackson")
jim_smith = Customer.new("Jim", "Smith")
mary_jones = Customer.new("Mary", "Jones")
jeff_ott = Customer.new("Jeff", "Ott")
jim_bow = Customer.new("Jim", "Bow")

# Restaurants
rubys = Restaurant.new("Ruby's")
pizza_hut = Restaurant.new("Pizza Hut")
arbys = Restaurant.new("Arby's")
meat_house = Restaurant.new("Meat House")

# Reviews
joe_jackson_arbys = Review.new(joe_jackson, arbys, "ok", 3)
jeff_ott_pizza_hut = Review.new(jeff_ott, pizza_hut, "pretty bad", 2)
mary_jones_meat_house = Review.new(mary_jones, meat_house, "amazing", 7)
mary_jones_arbys = Review.new(mary_jones, arbys, "not terrible", 4)
mary_jones_arbys2 = Review.new(mary_jones, arbys, "better last time", 3)
jim_bow_rubys = Review.new(jim_bow, rubys, "pretty good", 5)
jim_bow_arbys = Review.new(jim_bow, arbys, "yuck", 1)
jim_smith_pizza_hut = Review.new(jim_smith, pizza_hut, "awful", 0)

# jeff_ott.add_review(arbys, "so so", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
