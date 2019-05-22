require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 = Customer.new("David", "Gagne")
customer2 = Customer.new("Kevin", "Knox")
customer3 = Customer.new("Mitchell", "Robinson")
customer4 = Customer.new("Kevin", "Durant")
customer5 = Customer.new("Michael", "Jordan")

review1 = Review.new ("David", "Gagne", "McDonalds", 2, "The food was cold")
review2 = Review.new ("Kevin", "Knox", "Sammie's", 4, "The food was good")
review3 = Review.new ("Mitchell", "Robinson", "Tony's", 5, "The food was excellent")
review4 = Review.new ("Kevin", "Durant", "Burger King", 3, "The food was ok")
review5 = Review.new ("Michael", "Jordan", "Wendy's", 1, "The food was cold")

restaurant1= Restaurant.new ("McDonalds")
restaurant2= Restaurant.new ("Sammie's")
restaurant3= Restaurant.new ("Tony's")
restaurant4= Restaurant.new ("Burger King")
restaurant5= Restaurant.new ("Wendy's")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line