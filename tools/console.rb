require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

restaurant1 = Restaurant.new("Nobu","Japanese Peruvian restaurant in NYC", 4)
restaurant2 = Restaurant.new("Grimaldi", "Famous BrooklynPizza place", 5)
restaurant3 = Restaurant.new("Chipotle", "Burritos,chips and guac chain all over US", 5)

customer1 = Customer.new("Kevin", "Wang")
customer2 = Customer.new("Josh", "Smith")
customer3 = Customer.new("Steve","Jobs")

review1 = Review.new(customer1,restaurant1,5,"It's amazing!")
review2 = Review.new(customer1,restaurant1,3,"It's ok!")
review3 = Review.new(customer2,restaurant2,4,"It's splendid")
review4 = Review.new(customer1,restaurant3,4,"Always love getting the chicken burrito bowl")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
