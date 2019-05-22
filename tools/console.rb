require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cus1 = Customer.new("one","nono")
cus2 = Customer.new("two","toto")
cus3 = Customer.new("three","thotho")
cus4 = Customer.new("four","fofo")
cus5 = Customer.new("one","nono")


res1 = Restaurant.new("The Best")
res2 = Restaurant.new("The Tastiest")
res3 = Restaurant.new("The Garlic")
res4 = Restaurant.new("The D rating")
res5 = Restaurant.new("The Garlic")

rev1 = Review.new(cus1, res1, "it wasn't the best", 4)
rev2 = Review.new(cus1, res2, "soso", 3)
rev3 = Review.new(cus1, res3, "i <3 garlic", 5)
rev4 = Review.new(cus2, res4, "haha", 1)
rev5 = Review.new(cus3, res4, "real", 4)
rev6 = Review.new(cus3, res1, "dude", 4)
rev7 = Review.new(cus4, res2, "I'll b back", 5)
rev8 = Review.new(cus4, res2, "I eat here every night", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
