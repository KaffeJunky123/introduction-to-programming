message = "Launch School is the best"
loop do 
  puts ">>How many lines do you want? Enter a number >=3 (Q to quit):"
  input = gets.chomp
  break if input.upcase == "Q"
  n = input.to_i
  if n < 3
    puts ">> That's not enough lines."
    next
  end
  n.times {puts message}
end
