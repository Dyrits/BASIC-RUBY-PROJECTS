def bubble_sort(array)
  iteration = array.length
  while iteration > 1 do
    array.slice(0, iteration - 1).map!.with_index {|value, index|
    array[index], array[index + 1] = array[index + 1], array[index] if array[index] > array[index + 1]
    }
  iteration -= 1
  end
  array
end