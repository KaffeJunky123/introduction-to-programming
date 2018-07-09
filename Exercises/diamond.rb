def diamond(grid_size)
  stars_in_rows(grid_size).map(&method(:number_to_stars)).each do |stars|
    puts stars.center(grid_size)
  end
end

def number_to_stars_with_space(n)
  n == 1 ? '*' : '*' + ' ' * (n-2) + '*'
end

def number_to_stars(n)
  '*' * n
end

def stars_in_rows(grid_size)
  stars_in_row = (1..grid_size).to_a.reject(&:even?)
  stars_in_row + stars_in_row[0..-2].reverse
end
