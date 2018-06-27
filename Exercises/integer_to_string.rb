DIGITS = Hash[[*0..9].zip(%w(0 1 2 3 4 5 6 7 8 9))]

def signed_integer_to_string(int)
  if int>0
    '+'+integer_to_string(int)
  elsif int<0
    '-'+integer_to_string(-int)
  else
    '0'
  end
end

def integer_to_string(int)
  result = ""
  begin
    int, reminder = int.divmod(10)
    result<<DIGITS[reminder]
  end while int>0
  result.reverse
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
p signed_integer_to_string(-10) == '-10'
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
p integer_to_string(1234) == '1234'
p integer_to_string(729898) == '729898'
