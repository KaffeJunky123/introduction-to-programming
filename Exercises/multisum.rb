def multisum(num)
  (1..num).to_a.select {|n| (n % 3 == 0) || (n % 5 == 0)}.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
p multisum(20) == 98
