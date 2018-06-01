def short_long_short(str1, str2)
  return str1+str2+str1 if str1.size<str2.size
  str2+str1+str2
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
