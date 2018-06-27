def crunch(string)
  new_string = ''
  string.chars.each_with_index do |char, idx|
    new_string << (char!=string[idx+1] ? char : '')
  end
  new_string
end

def crunch_re(string)
  string.gsub(/(.)\1+/, '\1')
end
  
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
p crunch_re('reeeeeeeeee') == 're'
