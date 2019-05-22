require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
tom_king_c = Customer.new("Tom", "King")
tim_queen_c = Customer.new("Tim", "Queen")
tim_duke_c = Customer.new("Tim", "Duke")
ben_duke_c = Customer.new("Ben", "Duke")
ben_duke_c2 = Customer.new("Ben", "Duke")

friday_r = Restaurant.new("Friday")
dile_r = Restaurant.new("Dile")
applebee_r = Restaurant.new("Applebee")
applebee_r2 = Restaurant.new("Applebee")

review_1 = Review.new(tom_king_c, friday_r, "Good Food", 5)
review_2 = tim_queen_c.add_review(friday_r, "Hate this place", 1)
review_3 = tim_queen_c.add_review(dile_r, "Better than Friday", 4)
review_4 = tim_queen_c.add_review(dile_r, "Loving it", 5)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
