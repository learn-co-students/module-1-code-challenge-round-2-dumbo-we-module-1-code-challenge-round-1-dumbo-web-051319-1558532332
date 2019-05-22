require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

restaurant1 = Restaurant.new("BK")
restaurant2 = Restaurant.new("Pizza")
restaurant3 = Restaurant.new("Taco")

customer1 = Customer.new("Bob", "Dole")
customer2 = Customer.new("Joe", "Biden")
customer3 = Customer.new("Bill", "Clinton")

review1 = Review.new(customer1, restaurant1, 1, "Unhappy")
review1 = Review.new(customer1, restaurant1, 1, "Still Unhappy")
review2 = Review.new(customer1, restaurant2, 2, "Hey")
review3 = Review.new(customer1, restaurant3, 3, "Huh")
review4 = Review.new(customer2, restaurant1, 10, "Love it")
review5 = Review.new(customer3, restaurant3, 5, "Yum")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
