require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

fascatis = Restaurant.new("Fascatis")
fortune_house = Restaurant.new("Fortune House")
pochana = Restaurant.new("Pochana")
pye_boat = Restaurant.new("Pye Boat")

veronica = Customer.new("Veronica", "Lodge")
sabrina = Customer.new("Sabrina", "Spellman")
zelda = Customer.new("Zelda", "Spellman")
hilda = Customer.new("Hilda", "Spellman")
sabrina2 = Customer.new("Sabrina", "Notawitch")

review1 = Review.new(veronica, pochana, "meh", 2)
review2 = Review.new(sabrina, pochana, "sweet", 4)
review3 = Review.new(zelda, fortune_house, "magical", 4)

sabrina.add_review(fascatis, "amazing", 5)
hilda.add_review(pochana, "eh", 2)
sabrina.add_review(fortune_house, "sweet & spicy", 4)
veronica.add_review(fortune_house, "low-brow", 3)
veronica.add_review(pochana, "still meh", 2)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
