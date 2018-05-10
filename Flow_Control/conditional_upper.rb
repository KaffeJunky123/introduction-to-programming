def conup(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts("Joe Smith")
puts conup("Hello World YEeeeeeeaaaaaah!")
