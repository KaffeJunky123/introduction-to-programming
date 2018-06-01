def time_of_day(daylight)
  time = daylight ? "day" : "night"
  puts "It's #{time}time!"
end

daylight = [true, false].sample
time_of_day(daylight)
