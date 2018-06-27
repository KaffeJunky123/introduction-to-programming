def show_multiplicative_average(array)
  puts "The result is %.3f" % (array.reduce(:*) / array.size.to_f)
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])

