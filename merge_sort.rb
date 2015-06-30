def merge_sort array
  size = array.size
  if size < 2
    array
  else
    merge_array = array.each_slice((size/2.0).round).to_a
    array_a = merge_sort(merge_array[0]) 
    array_b = merge_sort(merge_array[1])
    new_array = []
    a = 0
    b = 0
    while new_array.size != size
      if array_a.nil? || array_a[a].nil?
        return new_array += array_b[b..-1]
      elsif array_b.nil? || array_b[b].nil?
        return new_array += array_a[a..-1]
      elsif array_a[a] < array_b[b]
        new_array << array_a[a]
        a += 1
      else 
        new_array << array_b[b]
        b += 1
      end
      end
  end
end

print merge_sort([1, 3, 2, 4, 6, 5, 7, 9, 8, 11, 10])