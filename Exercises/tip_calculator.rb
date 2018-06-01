p "What's the bill?"
bill = gets.chomp.to_f
p "What's the percentage"
percent = gets.chomp.to_f/100
tip = (bill*percent).round(2)
total = tip + bill
puts "The tip is $#{tip}"
puts "The total is $#{total}"
