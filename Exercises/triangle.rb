def triangle(num)
  stars = 1
  while num > 0
    num -= 1
    puts (' ' * num) + ('*' * stars)
    stars+=1
  end
end

triangle(8)     
