def twice(number)
  return number if double?(number)
  2*number
end

def double?(number)
  number = number.to_s
  middle = number.size / 2
  left, right = number.insert(middle, ' ').split
  left == right
end
