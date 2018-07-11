def fibonacci(num)
  if num == 1
    return 1
  else
    a = 0
    b = 1
    i = 2
    while i<=num
      aa = b
      bb = a+b
      a = aa
      b = bb
      i+=1
    end
    return b
  end
end

def find_fibonacci_index_by_length(num)
  counter=0
  loop do
    counter += 1
    result = fibonacci(counter)
    break if Math.log10(result).to_i + 1 == num
  end
  counter
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
