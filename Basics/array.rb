movies = {"Something"=>1975, "Something2"=>2018, "Something3"=>1945, "Something4"=>2004}
dates = []
movies.each_value {|year| dates.push(year)}
for year in dates
  puts year
end
