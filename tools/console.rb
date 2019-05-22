require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Tom", "MacLean")
customer2 = Customer.new("Megan", "Doherty")
customer3 = Customer.new("Jeremy", "Cassell")
customer4 = Customer.new("Dennis", "Bourey")

restaurant1 = Restaurant.new("Pizzarama")
restaurant2 = Restaurant.new("Pho Basil")
restaurant3 = Restaurant.new("Vinnie's")
restaurant4 = Restaurant.new("Nina's")

review1 = Review.new(customer1, restaurant1, 5, "great big salad!")
review2 = Review.new(customer1, restaurant1, 2, "fun!")
review3 = Review.new(customer2, restaurant2, 4, "worst food ever!")
review4 = Review.new(customer2, restaurant3, 1, "no")
review5 = Review.new(customer3, restaurant3, 2, "we had a great time and everyone enjoyed their food!")
review6 = Review.new(customer4, restaurant2, 4, "terribe small salad...")

customer1.add_review(restaurant1, "wow food!", 5)
customer1.add_review(restaurant1, "wow that is some food!", 4)
customer1.add_review(restaurant1, "wow i enjoyed the food!", 2)
customer2.add_review(restaurant1, "wow food is what we had!", 4)
customer2.add_review(restaurant1, "REDUNDANT REVIEW", 3)
customer3.add_review(restaurant3, "wowwwww fooooood!", 2)
customer4.add_review(restaurant4, "wwwwwow fffoood!", 2)
customer4.add_review(restaurant4, "meh, food", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
