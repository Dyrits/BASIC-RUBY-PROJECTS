def stock_picker(array) 
  index_end = array.length - 1
  actual_best = 0
  picked_indexes = [0, 0]

  array_sorted.each_index {|index|
    while index < index_end do
      indexes = [array.index(array_sorted[index]), array.index(array_sorted[index_end])] # Indexes of the values in the original array
      if indexes[0] < indexes[1] # If the index are in the right order in the original list...
        possible_best = array_sorted[index_end] - array_sorted[index] # ...the benefits are calculated.
        if possible_best > actual_best # If the benefits are higher than the previous stored value...
          actual_best = possible_best  # ...the best benefits value is updated.
          picked_indexes = indexes # ... the indexes are updated.
        end
        index_end = array.length - 1
        break # The loop is broken, since the following value can'te be higher.
      end
      index_end -= 1
    end  
  }
  picked_indexes
end