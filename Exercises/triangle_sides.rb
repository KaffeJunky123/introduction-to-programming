def triangle(a, b, c)
  return :invalid unless valid_triangle?(a,b,c)
  if equilateral?(a, b, c) then :equilateral
  elsif isosceles?(a, b ,c) then :isosceles
  else :scalene
  end
end

def valid_triangle?(a,b,c)
  a, b, c = [a,b,c].sort
  a + b > c && a != 0
end

def equilateral?(a, b, c)
  (a==b) && (b==c)
end

def isosceles?(a, b, c)
  a,b,c = [a,b,c].sort
  a != c && (( a == b ) || (b == c) )
end
