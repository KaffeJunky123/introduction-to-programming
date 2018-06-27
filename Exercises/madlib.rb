WORD_TYPES = {noun: "a noun", verb: "a verb", adjective: "an adjective", adverb: "an adverb"}
def readword(type)
  loop do
    prompt("Enter #{WORD_TYPES[type]}:")
    word = gets.chomp
    break word if /\w+/ =~ word
    prompt("Input was not a word!")
  end
end

def prompt(str)
  puts "=>#{str}"
end

noun, verb, adjective, adverb = WORD_TYPES.map{|type,| readword(type)}
puts "How is your #{noun} so #{adjective}, when you #{verb} #{adverb}."

