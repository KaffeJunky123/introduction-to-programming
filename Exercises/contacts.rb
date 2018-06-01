contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
symbols = [:email,:address,:phone]

contact_data.each_with_index do |data,i|
  symbols.each do |symbol|
    contacts[contacts.keys[i]][symbol] = data.shift
  end
end
p contacts 
