def word_to_digit(sentence)
  digits = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven',
            'eight', 'nine']
  digits.each do |digit|
    sentence.gsub!(/\b*#{digit}\s*/i, digits.index(digit).to_s)
  end
  sentence.gsub(/(\d{3})(\d{3})(\d{4})/,
               '(\1) \2-\3')
end
