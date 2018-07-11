require 'date'

def friday_13th(year)
  Date.new(year,1,1).step(Date.new(year,-1,-1)).select {|d| d.friday? && d.day==13}.size
end

def months_with_5fridays(year)
  months = (1..12).map { |month| Date.new(year,month,1).step(Date.new(year, month, -1)) }
  months.count { |month| month.count { |d| d.friday?} == 5 }
end
