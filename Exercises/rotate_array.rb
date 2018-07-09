def rotate_array(array)
  array[1..-1] + [array.first]
end

def rotate_rightmost_digits(digit, n)
  digits = digit.to_s.chars
  digits[-n..-1] = rotate_array(digits[-n..-1])
  digits.join.to_i
end

def max_rotation(digit)
  size = digit.to_s.size
  while size > 0
    digit = rotate_rightmost_digits(digit, size)
    size-=1
  end
  digit
end
