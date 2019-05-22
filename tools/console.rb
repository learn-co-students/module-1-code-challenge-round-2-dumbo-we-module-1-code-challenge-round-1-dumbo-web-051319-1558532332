require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new('Tanuka', 'Das')
c2 = Customer.new('Tess', 'Dais')
c3 = Customer.new('Sam', 'Smith')
# c1 = Customer.new('Tanuka', 'Das')

r1 = Restaurant.new('Spice')
r2 = Restaurant.new('To be Thai')
r3 = Restaurant.new('Mappni')


review1 = Review.new(r1, c1, 'very good', 5)
review2 = Review.new(r2, c2, 'okay', 4)
review3 = Review.new(r3, c3, 'bad', 2)
binding.pry
 0#leave this here to ensure binding.pry isn't the last line
