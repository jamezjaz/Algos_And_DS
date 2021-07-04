def partition(array, begin_index, end_index)
  pivot = array[end_index]
  j = begin_index
  for i in begin_index...end_index
    if array[i] < pivot
      array[i], array[j] = array[j], array[i]
      j += 1
    end
  end
  array[end_index], array[j] = array[j], array[end_index]
  j
end

def advanced_quicksort(array, begin_index = 0, end_index = array.length - 1)
  if begin_index < end_index
    pivot = partition(array, begin_index, end_index)
    p array
    
    advanced_quicksort(array, begin_index, pivot - 1)
    advanced_quicksort(array, pivot + 1, end_index)
  end
end

advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9

