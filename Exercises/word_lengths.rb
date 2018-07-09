def word_lengths(str)
  str.split.map { |word| [word, word.size].join(' ') }
end
