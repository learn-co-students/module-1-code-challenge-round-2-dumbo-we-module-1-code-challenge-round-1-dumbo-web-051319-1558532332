require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

semere = Customer.new("Semere", "Haile")
haile = Customer.new("Haile", "Genru")
tikabo = Customer.new("Tikabo", "Ande")
rahwa = Customer.new("Rahwa", "Kakay")
senit = Customer.new("Senait", "Werede")


jersey_r = Restaurant.new("Jersey")
mac_r = Restaurant.new("McDonald")
kfc_r = Restaurant.new("KFC")
selam_r = Restaurant.new("Selam")


review1_1 = semere.add_review("Good good", 9, jersey_r)
review1_2 = semere.add_review("Good good", 12, mac_r)
review1_3 = rahwa.add_review("Good food", 8, kfc_r)
review1_4 = tikabo.add_review("Amazing", 3, jersey_r)
# review1_1 = semere.add_review("Good good", 9, jersey_r)

# review1_1 = semere.add_review("Good good", 9, jersey_r)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line