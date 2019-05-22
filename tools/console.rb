require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

restaurant1 = Restaurant.new('Cat Palace')
restaurant2 = Restaurant.new('Dog Palace')
restaurant3 = Restaurant.new('Sloth Palace')
restaurant4 = Restaurant.new('Rat Palace ')

customer1 = Customer.new('Momi', 'Nguyen')
customer2 = Customer.new('Popi', 'Guyen')
customer3 = Customer.new('Lychee', 'Guy')
customer4 = Customer.new('Mochi', 'Ngu')
customer5 = Customer.new('Pomo', 'Ng')


review1 = Review.new(customer1, restaurant1, 6, 'I dig')
review2 = Review.new(customer2, restaurant2, 5 , 'I Like')
review3 = Review.new(customer3, restaurant3, 3 , 'I dislike')
review4 = Review.new(customer4, restaurant4, -2 , 'I enjoy')
review5 = Review.new(customer5, restaurant2, 5 , 'I hate')
review6 = Review.new(customer1, restaurant3, 5 , 'I love')



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
