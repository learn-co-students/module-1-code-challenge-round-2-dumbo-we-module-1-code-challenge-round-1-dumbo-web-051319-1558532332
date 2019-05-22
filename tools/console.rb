require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

restaurant1 = Restaurant.new("Dynable1")
restaurant2 = Restaurant.new("Dynable2")
restaurant3 = Restaurant.new("Dynable3")

customer1 = Customer.new("Avi1", "Tota1")
customer2 = Customer.new("Avi2", "Tota2")
customer3 = Customer.new("Avi3", "Tota3")

# review (restaurant, customer, rating, content)
review1 = Review.new(restaurant1, customer1,"4/5", "really good food" )
review2 = Review.new(restaurant2, customer2,"1/5", "really bad" )
review3 = Review.new(restaurant3, customer3,"5/5", "really good people" )
review4 = Review.new(restaurant1, customer2,"3/5", "really good service" )
review5 = Review.new(restaurant1, customer3,"2/5", "really terrible" )


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
