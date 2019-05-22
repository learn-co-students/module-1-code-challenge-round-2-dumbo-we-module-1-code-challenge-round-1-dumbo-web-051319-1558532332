require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

0 #leave this here to ensure binding.pry isn't the last line


#Customers 
customer1 = Customer.new("Bob", "Sagat")
customer2 = Customer.new("Mike", "Khassay")
customer3 = Customer.new("Stefanos", "Ugbit")
customer4 = Customer.new("Chris", "Clarke")



#Reviews 
review1 = Review.new(customer1, restaurant1, rating, content)
review2 = Review.new(customer2, restaurant2, rating, content)
review3 = Review.new(customer3, restaurant3, rating, content)
review4 = Review.new(customer4, restaurant4, rating, content)


#Restaurant 
restaurant1 = Restaurant.new('GyuKaku')
restaurant2 = Restaurant.new('Nomad')
restaurant3 = Restaurant.new('Applebees')
restaurant4 = Restaurant.new('Donuts')


binding.pry




