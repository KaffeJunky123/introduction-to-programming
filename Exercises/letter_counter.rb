def letter_case_count(string)
  result = {lowercase: 0, uppercase: 0, neither: 0}
  string.chars.each do |char|
    if /[[:upper:]]/.match(char)
      result[:uppercase]+=1
    elsif /[[:lower:]]/.match(char)
      result[:lowercase]+=1
    else
      result[:neither]+=1
    end
  end
  result
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }  
