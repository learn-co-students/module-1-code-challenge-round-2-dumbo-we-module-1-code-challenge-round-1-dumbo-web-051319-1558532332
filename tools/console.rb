require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Tom", "Brady")
customer2 = Customer.new("Megan", "Doherty")
customer3 = Customer.new("Jeremy", "Cassell")
customer4 = Customer.new("Dennis", "Bourey")
customer5 = Customer.new("Tom", "MacLean")

restaurant1 = Restaurant.new("Pizzarama")
restaurant2 = Restaurant.new("Pho Basil")
restaurant3 = Restaurant.new("Vinnie's")
restaurant4 = Restaurant.new("Nina's")

review1 = Review.new(customer1, restaurant2, 5, "great big salad!")
review2 = Review.new(customer1, restaurant3, 2, "fun!")
review3 = Review.new(customer2, restaurant2, 4, "worst food ever!")
review4 = Review.new(customer2, restaurant3, 1, "no")
review5 = Review.new(customer3, restaurant3, 2, "we had a great time and everyone enjoyed their food!")
review6 = Review.new(customer4, restaurant2, 4, "terribe small salad...")

customer1.add_review(restaurant1, 5, "wow food!")
customer1.add_review(restaurant1, 4, "wow that is some food!")
customer1.add_review(restaurant1, 2, "wow i enjoyed the food!")
customer2.add_review(restaurant1, 4, "wow food is what we had!")
customer2.add_review(restaurant1, 3, "REDUNDANT REVIEW")
customer3.add_review(restaurant3, 2, "wowwwww fooooood!")
customer4.add_review(restaurant4, 2, "wwwwwow fffoood!")
customer4.add_review(restaurant4, 3, "meh, food")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
