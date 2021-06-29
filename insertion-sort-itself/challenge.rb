def sort_itself(array)
  # write your code here
  (1...array.length).each do |i|
    insert_value = array[i]
    j = i - 1
    while j >= 0 && insert_value < array[j]
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = insert_value
    puts array.join(' ')
  end
end

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9
