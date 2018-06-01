def reverse_sentence(sentence)
  sentence.split(" ").reverse.join(" ")
end

def reverse_words(string)
  words = string.split
  words.map{|word| word.size<5 ? word : word.reverse}.join(' ')
end
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

