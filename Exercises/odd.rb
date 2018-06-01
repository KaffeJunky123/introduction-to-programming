require 'minitest/assertions'
def is_odd?(number)
  number % 2 != 0
end

p (is_odd?(3) == true)
p (is_odd?(4) == false)
p (is_odd?(0) == false)
p (is_odd?(-4) == false)
p (is_odd?(-3) == true)
