require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# CUSTOMERS

otha = Customer.new("Otha", "Hernandez")
leah = Customer.new("Leah", "Borrie")
maddie = Customer.new("Maddie", "V")
matt = Customer.new("Matt", "Mango")


# RESTAURANTS
res_1 = Restaurant.new("Emily")
res_2 = Restaurant.new("Se-Port")
res_3 = Restaurant.new("Tony's")




# USER METHODS
review_1 = otha.add_review(res_1, "I loved this place", 10)
review_2 = otha.add_review(res_2, "THIS PLACE SUCKED", 0)

review_3 = leah.add_review(res_1, "THAT BURGER THO", 9)
review_4 = leah.add_review(res_2, "THIS PLACE SUCKED", 0)
review_5 = leah.add_review(res_1, "THAT BURGER THOOOOO", 10)
review_6 = leah.add_review(res_2, "THIS PLACE SUCKED", 0)

review_7 = maddie.add_review(res_1, "I loved this place", 10)
review_8 = maddie.add_review(res_2, "THIS PLACE WAS GREAT!", 0)
review_9 = maddie.add_review(res_3, "I loved this place", 10)
review_10 = maddie.add_review(res_2, "THIS PLACE WAS GREAT!", 0)
review_11 = maddie.add_review(res_3, "I loved this place", 10)

matt.add_review(res_1, "YOOOO", 10)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
