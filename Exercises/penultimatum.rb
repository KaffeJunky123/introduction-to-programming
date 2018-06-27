def penultimate(string)
  string.split[-2]
end

def middleword(string)
  words = string.split
  middle = (words.size/2.0).ceil
  words[-middle]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
p middleword('The middle street!')
p middleword('Yolo')
p middleword('Even number of words!')
