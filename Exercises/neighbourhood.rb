neighbourhood= {   

  house1: ["bob", "joe","jill", "steve"], 

  house2: ["jane", "jill", "beth"], 

  house3: ["frank","rob","david","susan"], 

  house4: ["mary","sally","susan"] 

} 

names = Hash.new(0)

neighbourhood.values.flatten.each {|name| names[name]+=1}

for (name,value) in  names.sort_by {|key, value| -value} do
  puts "#{name}: #{value}"
end  

