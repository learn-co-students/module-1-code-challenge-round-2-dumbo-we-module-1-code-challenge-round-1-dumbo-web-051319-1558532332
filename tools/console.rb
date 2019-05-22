require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


restaurant1 = Restaurant.new("Boogie")
restaurant2 = Restaurant.new("CityGrill")
restaurant3 = Restaurant.new("GEMINI")
restaurant4 = Restaurant.new("FlatopGrill")
restaurant5 = Restaurant.new("FlatopGrill")

customer1 = Customer.new("Carla", "Stickler")
customer2 = Customer.new("Adam", "Pasulka")
customer3 = Customer.new("Gemma", "Wilson")
customer4 = Customer.new("Sarah", "Dell'Orto")
customer5 = Customer.new("Carla", "Stickler")
customer6 = Customer.new("Carla", "Barrett")

review1 = Review.new(restaurant1, customer1, "This was a great night", 5)
review2 = Review.new(restaurant2, customer1, "This was a terrible night", 1)
review3 = Review.new(restaurant3, customer2, "This was an ok night", 3)

review4 = customer1.add_review(restaurant3, "Fancy Pants time", 4)
review5 = customer2.add_review(restaurant2, "Worst Service EVER!", 1)
review6 = customer1.add_review(restaurant3, "Still the Best Service EVER!", 5)
review7 = customer1.add_review(restaurant2, "Still the Best Service I have had EVER!", 5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line