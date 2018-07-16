def sum_square_difference(num)
  numbers = (1..num).to_a
  square_of_sums = numbers.sum**2
  sum_of_squares = numbers.map { |n| n**2 }.sum 
  square_of_sums - sum_of_squares
end
