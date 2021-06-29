# def duplicates(arr1, arr2)
#   # write your code here
#   arr2.each_with_index do |value, index|
#     arr1.each_with_index do |val, idx|
#       if val === value
#         arr2[index] = nil
#         arr1[idx] = nil
#         break
#       end
#     end
#   end
#   # remove all nil values and sort them
#   arr2.compact.sort
# end

def duplicates(arr1, arr2)
  # write your code here
  arr1.each_with_index do |value, index|
    arr2.each_with_index do |val, idx|
      if value === val
        arr1[index] = nil
        arr2[idx] = nil
        break
      end
    end
  end
  # remove all nil values and sort them
  # p arr2
  # p arr2.compact
  arr2.compact.sort
end


p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# => [204, 205, 206]

p duplicates([9, 8, 6, 3, 2, 9, 0, 6, 8, 6, 0], [9, 8, 1, 1, 4, 5, 8, 6, 3, 2, 0, 15, 10, 7])
