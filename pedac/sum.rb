def readtarget
  puts ">>Enter target number: "
  gets.chomp.to_i
end
def readfactors
  puts "Enter factors(factor, factor): "
  /[\d+,\s+]+/.match(gets.chomp)[0].split(", ").map {|n| n.to_i}
end

# Set von Zahlen die sich durch die factoren teilen lassen
# Faktoren selbst + factor * 2..target
def sum_of_multiples(target,factors)
  multiples = []
  factors = [3,5] if factors.length == 0
  
  factors.each do |factor|
    current_multiple = factor 
    while current_multiple<target
      multiples << current_multiple
      current_multiple+=factor
    end
  end
  multiples.uniq.reduce(0,:+)
end
p sum_of_multiples(20, [])
p sum_of_multiples(100000000, [3,5])
p sum_of_multiples(0, [])
p sum_of_multiples(1, [])
