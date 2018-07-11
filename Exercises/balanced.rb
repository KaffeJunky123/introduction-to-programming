def balanced?(str)
  parens_open = 0
  parens_closing = 0
  str.chars.each do |char|
    return false if parens_closing > parens_open
    parens_open += 1 if char == '('
    parens_closing +=1 if char ==')'
  end
  parens_open == parens_closing
end
