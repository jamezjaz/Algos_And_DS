def leftmost_nodes_sum(array)
  # your code here
  # puts array
  sum = 0
  return 0 if array.length === 0
  i = 0
  # while !array[i].nil?
  while i < array.length
    sum += array[i]
    i = 2*i+1
  end
  sum
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9, 8, 3, 5, 2])
# => 19
