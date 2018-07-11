def featured(num)
  num += 1
  num +=1 until num.odd? && num % 7 == 0
  until is_feature?(num)
    num+=14
    return 'There is no possible number'+
      ' that fulfills those requirements' if num > 9876543210
  end
  num
end

def is_feature?(num)
  return false unless num % 7 == 0 && num.odd?
  digits = num.to_s.chars
  digits.uniq == digits
end
