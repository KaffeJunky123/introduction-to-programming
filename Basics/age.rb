puts "How old are you?"
age = gets.chomp.to_i
years = 10
while years < 50
  puts "In #{years} years you will be #{age+years}"
  years = years +10
end 
