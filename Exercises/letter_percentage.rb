def letter_percentages(str)
  result = {}
  size = str.size.to_f
  result[:lowercase] = (str.count('a-z') / size) * 100
  result[:uppercase] = (str.count('A-Z') / size) * 100
  result[:neither] = (str.count('^a-zA-Z') / size) * 100
  result
end
