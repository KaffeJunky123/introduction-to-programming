def count_occurrences(array)
  count = Hash.new(0)
  array.each {|item| count[item]+=1}
  count.each do |element, count|
    puts "#{element} => #{count}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
