require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cus1 = Customer.new("Joe", "S")
cus2 = Customer.new("Danielle", "X")

res1 = Restaurant.new("Old Restaurant")
res2 = Restaurant.new("New Restaurant")

cus1.add_review(res2, "quite new", 3)
cus2.add_review(res1, "quite old", 4)
cus1.add_review(res1, "I guess it was pretty old", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
