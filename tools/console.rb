require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#CUSTOMER CLASS
customer1 = Customer.new("Rina", "Robledo")
customer2 = Customer.new("AnaMaria", "Crespo")
customer3 = Customer.new("Erika", "Gregorio")
customer4 = Customer.new("Diana", "Arnozcy")
customer5 = Customer.new("John", "Smith")
customer6 = Customer.new("John", "Smith")
customer7 = Customer.new("John", "Mesa")


#RESTAURANT CLASS
restaurant1 = Restaurant.new("Don Coqui")
restaurant2 = Restaurant.new("I Love PY")
restaurant3 = Restaurant.new("Arriba Arriba")
restaurant4 = Restaurant.new("McDonalds")
restaurant5 = Restaurant.new("McDonalds")

#REVIEW CLASS(customer, restaurant, rating, content)
review1 = Review.new(customer2, restaurant1, 4, "Great")
review2 = Review.new(customer2, restaurant2, 5, "Amazing")
review3 = Review.new(customer2, restaurant3, 5, "Yummy food")
review4 = Review.new(customer2, restaurant4, 1, "Gross")
review5 = Review.new(customer2, restaurant5, 1, "Why do I even come back")
review6 = Review.new(customer5, restaurant1, 3, "Exotic")
review7 = Review.new(customer5, restaurant2, 4, "Yum")
review8 = Review.new(customer5, restaurant3, 2, "Loud music")
review9 = Review.new(customer6, restaurant1, 3, "OK")
review10 = Review.new(customer6, restaurant2, 2, "Fine")
review11 = Review.new(customer6, restaurant4, 5, "Classic")
review12 = Review.new(customer3, restaurant3, 4, "Cheap good food")
review13 = Review.new(customer7, restaurant5, 2, "Pricey")
review14 = Review.new(customer4, restaurant2, 5, "Delicious")
review15 = Review.new(customer4, restaurant1, 5, "Great ambience")
review16 = Review.new(customer1, restaurant1, 5, "Fun")







binding.pry
0 #leave this here to ensure binding.pry isn't the last line