def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = " "
denominator = " "
error = "Invalid input. Only integers are allowed!"
zero = "Invalid input. denominator"

loop do
  puts "Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts error
end

loop do
  puts "Please enter the denominator:"
  denominator = gets.chomp
  break if valid_number?(denominator) && denominator.to_i != 0
  puts (denominator.to_i!=0 ? error : zero)
end
puts numerator+" / "+denominator+" is #{numerator.to_i / denominator.to_i}"
