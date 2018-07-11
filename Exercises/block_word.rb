def block_word?(word)
  blocks = [['B','O'], ['X','K'], ['D','Q'], ['C','P'], ['N','A'],
         ['G','T'],  ['R', 'E'], ['F','S'], ['J', 'W' ],  ['H', 'U'],
         ['V','I'], ['L','Y'], ['Z','M']]
  result = true
  word.chars.each do |char|
    result = false unless char_in_blocks?(char, blocks)
  end
  result
end

def char_in_blocks?(char, blocks)
  block = blocks.select { |blk| blk.first == char.upcase ||
                          blk.last == char.upcase }.flatten
  blocks.delete(block)
  return true unless block == []
  false
end
