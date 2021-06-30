def find_pairs(array, k)
  # write your code here
  # p array, k
  result = []
  array.each_with_index do |val, idx|
    next_val = idx + 1
    while next_val < array.length
      result.push([val, array[next_val]]) if val + array[next_val] == k
      next_val += 1
    end
  end
  result
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]

p find_pairs([8, 17, 5, 11, 9, 6, 3, 2, 15], 21)
# => [[6, 15]]

p find_pairs([17, -20, 21, -3, 33, 10, 6, -11, 19, 40, 11, 17, 56, 33, 72, 5, 1, 36, 51], 40)
# => [[21, 19], [-11, 51]]
