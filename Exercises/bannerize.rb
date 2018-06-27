def print_in_box(string)
  puts <<-MSG
          +#{'-'* (string.size+2)}+
          |#{' '* (string.size+2)}|
          | #{string} |
          |#{' '* (string.size+2)}|
          +#{'-'* (string.size+2)}+
       MSG
end

print_in_box("This is a test")
