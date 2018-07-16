def bubble_sort!(array)
  n = array.length
  begin
    newn = 0
    1.upto(array.size-1) do |i|
      next if array[i] > array[i-1]
      array[i], array[i-1] = array[i-1], array[i]
      newn = i
    end
    n = newn
  end until n == 0
  nil
end
