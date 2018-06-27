# time of the day as minutes before or after midnight
# positive: after midnight, negative: before midnight
# input: minutes before/after midnight
# output: hh:mm

HOUR_PER_DAY = 24
MIN_PER_HOUR = 60
MIN_PER_DAY = HOUR_PER_DAY * MIN_PER_HOUR

def split_hour_min(str)
  arr = str.split(":")
  [arr[0].to_i, arr[1].to_i]
end
def after_midnight(str)
  hour, min = split_hour_min(str)
  (hour * MIN_PER_HOUR + min) % MIN_PER_DAY
end
def before_midnight(str)
  hour, min = split_hour_min(str)
  - (hour*MIN_PER_HOUR + min) % MIN_PER_DAY
end
def time_of_day(num)
    num = num % MIN_PER_DAY
    hour, min = num.divmod(MIN_PER_HOUR)
    format('%02d:%02d', hour, min)
end
  
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
