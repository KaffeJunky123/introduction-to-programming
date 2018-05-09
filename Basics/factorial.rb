def fact(num)
  if num==0
    1
  else
    num * fact(num.abs-1)
  end
end
for i in [5,6,7,8]
  puts fact(i)
end  
