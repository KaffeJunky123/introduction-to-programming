puts 'Enter the length of the room in meters:'
length = gets.chomp.to_f
puts 'Enter the width of the room in meters:'
width = gets.chomp.to_f
sqm = width*length
sqft = sqm * 10.7639
puts "The area of the room is #{sqm.round(2)} square meters (#{sqft.round(2)} square feet)."
