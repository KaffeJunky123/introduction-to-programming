def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end
p factors(99)
p factors(0)
p factors(-100)
