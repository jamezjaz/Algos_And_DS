def merge_sort(array1, array2)
  # write your code here
  sorted_array = []
  i = 0
  j = 0
  while i < array1.length && j < array2.length
    if array1[i] < array2[j]
      sorted_array.push(array1[i])
      i += 1
    else
      sorted_array.push(array2[j])
      j += 1
    end
  end
  while i < array1.length
    sorted_array.push(array1[i])
    i += 1
  end
  while j < array2.length
    sorted_array.push(array2[j])
    j += 1
  end
  sorted_array
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]
