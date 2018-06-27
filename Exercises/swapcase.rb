def swapcase(string)
  result = string.chars.map do |char|
    if char =~ /[[:upper:]]/
      char.downcase
    elsif char =~/[[:lower:]]/
      char.upcase
    else
      char
    end
  end
  result.join
end

p swapcase("Yolo!")
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

