def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def rdn
  loop do
    puts ">> Please enter a positive or negative integer:"
    n = gets.chomp
    return n.to_i if valid_number?(n)   
    puts ">> Invalid input. Only non-zero integers are allowed."
  end
end

a = nil
b = nil
loop do
  a = rdn
  b = rdn
  res = a+b
  if (a<res && b>res) or (a>res && b<res)
    puts "#{a} + #{b} = #{res}"
    break
  end  
  puts ">> Sorry. One integer must be positive, one must be negative.\n>> Please start over."
end
