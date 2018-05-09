num = 2018
digits = []
while num>=10
  digits.unshift(num % 10)
  num = num / 10
end
digits.unshift(num % 10)
for digit in digits
  puts digit
end 
