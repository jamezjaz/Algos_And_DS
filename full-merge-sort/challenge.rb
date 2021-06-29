def full_merge_sort(array)
  # write your code here
  recursive_merge(array).map { |str| str.scan(/[A-Za-z]/).join }
end

def recursive_merge(array)
  return array if array.length == 1
  half = (array.length-1)/2
  array1, array2 = array[0..half], array[half+1..-1]
  merge(recursive_merge(array1), recursive_merge(array2))
end

def merge(array1, array2)
  i, j = 0, 0
  res = []
  until i == array1.length || j == array2.length
    if array1[i].to_i <= array2[j].to_i
      res.push(array1[i])
      i += 1
    else
      res.push(array2[j])
      j += 1
    end
  end
  if i < array1.length
    res + array1[i..-1]
  elsif j < array2.length
    res + array2[j..-1]
  else
    res
  end
end

p full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]

