def insertion_sort(array)
  # write your code here
  # unsorted = array[array.length - 1]
  unsorted = array[-1]
  count  = array.length - 1
  while count >= 0
  # while count <=> 0
    array[count] = array[count - 1]
    if array[count] <= unsorted or count == 0
      array[count] = unsorted
      puts array.join(' ')
      break
    end
    puts array.join(' ')
    count -= 1
  end
  array
end

insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9
