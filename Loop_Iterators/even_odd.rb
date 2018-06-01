count = 1

loop do
  puts count.odd? ? "is odd!" : "is even!"
  
  break if count == 5
  count += 1
end
