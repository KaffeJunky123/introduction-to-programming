numbers=Array(0..10)
loop do
  number = rand(100)
  puts number
  break if number in numbers
end
