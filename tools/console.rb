require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Customers
tina = Customer.new("Tina", "Turner")
alicia = Customer.new("Alicia", "Keys")
beyonce = Customer.new("Beyonce", "Knowles")

# restaurants

red_rooster = Restaurant.new("Red Rooster")
nobu = Restaurant.new("Nobu")
barawine = Restaurant.new("Barawine")

# Review

review_1 = Review.new(tina, red_rooster, 3, "Nice decor but bland food")
review_2 = Review.new(tina, barawine, 5, "Food is amaaaazing!!")
review_3 = Review.new(beyonce, nobu, 5, "Glad I had hot sauce in my bag")
review_4 = Review.new(alicia, barawine, 4, "Neighborhood favorite")








binding.pry
0 #leave this here to ensure binding.pry isn't the last line
