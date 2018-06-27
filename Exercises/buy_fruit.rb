def buy_fruit(array)
  results = []
  array.to_h.each{|key, value| value.times {|_| results<<key}}
  results
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
