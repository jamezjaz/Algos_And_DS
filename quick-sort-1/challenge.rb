def partition(array)
  # write your code here
  # p array
  small = []
  big = []
  pivot = array[0]
  # puts pivot
  array.each do |i|
    small << i if i < pivot
    big << i if i > pivot
  end
  [small, pivot, big].flatten
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]

p partition([45, 25, 28, 6, 13, 5, 36, 44, 7, 4, 11, 30, 24, 34, 15, 31, 38, 45, 46, 48, 49])
# => [25, 28, 6, 13, 5, 36, 44, 7, 4, 11, 30, 24, 34, 15, 31, 38, 45, 46, 48, 49]
