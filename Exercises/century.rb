def ending(century)
  return 'th' if [11, 12, 13].include?(century%100)
  last_digit = century % 10
  case last_digit
  when 1
    'st'
  when 2
    'nd'
  when 3
    'rd'
  else
    'th'
  end
end
def century(year)
  century = year / 100
  year % 10 > 0 ? century+=1 : century
  "#{century}#{ending(century)}"
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127)  == '12th'
p century(11201)  == '113th'  
