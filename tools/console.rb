require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#### Customer ####
mochi = Customer.new("Mochi", "Sandoval")
lychee = Customer.new("Lychee", "Sandoval")
daniela = Customer.new("Daniela", "Sandoval")

#### Restaurant ####
the_pie = Restaurant.new("The Pie Place")
the_chicken = Restaurant.new("The Chicken Place")
the_waffles = Restaurant.new("The Waffle Place")

##### Review ####
mochi_r_pie = Review.new(the_pie, "Love it!!!", mochi, 4)
mochi_r_waffle = Review.new(the_waffles, "Ehh..", mochi, 1)
mochi_r_chicken = Review.new(the_chicken, "YES.", mochi, 5)
daniela_r_the_pie = Review.new(the_pie, "the best place ever in the world", daniela, 5)
lychee_r_th_chicken = Review.new(the_chicken, "wish they had fish", lychee, 1)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
