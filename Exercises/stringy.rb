def stringy(number)
  one = true
  str = ""
  number.times do
    str<<"#{one ? 1 : 0}"
    one = !one
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

