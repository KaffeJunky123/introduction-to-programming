def leap_year?(year)
  return leap_year_julian?(year) if year < 1752
  if year % 4 == 0
    return true unless year % 100 == 0
    return true if year % 400 == 0
  end
  false
end
def leap_year_julian?(year)
  year % 4 == 0
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
