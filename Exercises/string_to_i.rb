DIGITS = Hash[%w(0 1 2 3 4 5 6 7 8 9).zip([*0..9])]

def string_to_signed_integer(str)
  case str[0]
  when '-'
    -string_to_integer(str[1..-1])
  when '+'
    string_to_integer(str[1..-1])
  else
    string_to_integer(str)
  end
end
  
def string_to_integer(str)
  result = 0
  str.size.times do |idx|
    result *= 10
    result += DIGITS[str[idx]]
  end
  result
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer("1234") == 1234
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
