# separate string by space, swap words first and last letter
def swap(words)
  arr = words.split
  arr.each do |word|
    tmp = word[0]
    word[0] = word[-1]
    word[-1] = tmp
  end
  arr.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
p swap("Test Case for great justice")
