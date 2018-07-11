def longest_sentence(file_name)
  book = IO.read(file_name)
  sentences = book.split(/([.!?])/)
  longest_sentence = sentences.max_by{ |sentence| sentence.split.size }
  [ longest_sentence.strip, longest_sentence.split.size ]
end
