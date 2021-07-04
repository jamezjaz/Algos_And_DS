require 'set'

# def find_duplicates(array)
#   # write your code here
#   # p array
#   new_array = Set.new
#   duplicates = []
#   len = array.length

#   array.each do |ele|
#     len = new_array.length
#     new_array.add(ele)
#     duplicates.push(ele) if new_array.length == len
#   end
#   duplicates
# end

def find_duplicates(array)
  # write your code here
  # p array
  new_array = Set.new
  duplicates = []
  len = new_array.length

  array.each do |ele|
    len = new_array.length
    new_array.add(ele)
    duplicates.push(ele) if new_array.length == len
  end
  # array.each { |ele| new_array.add(ele).push(ele) if new_array.length == new_array.length}
  duplicates
end


p find_duplicates([1, 2, 3, 1, 5, 6, 7, 8, 5, 2])
# => [1, 5, 2]

p find_duplicates([3, 501, 17, 23, -43, 67, 5, 888, -402, 235, 77, 99, 311, 1, -43])
# => [-43]

p find_duplicates([4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509])
# => [-345, 4376, -345, 4376, -345]

