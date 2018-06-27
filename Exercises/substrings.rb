def substrings_at_start(string)
  res = []
  1.upto(string.size) do |n|
    res << string[0,n]
  end
  res
end

def substrings(string)
  res = []
  size = string.size-1
  0.upto(size) do |i|
    res << substrings_at_start(string[i..size])
  end
  res.flatten
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  substrings(string).reject {|str| !palindrome?(str)}
end
 
p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
p palindromes('ABBA')
p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
