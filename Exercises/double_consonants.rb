def double_consonants(string)
  string.gsub(/[^aeiou\W\d]/, '\0\0')
end

p double_consonants("Somet0hing# awfull!")
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
