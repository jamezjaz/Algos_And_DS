def hash_table(arr)
  # write your code here
  key_map = Array.new(11)
  arr.each do |value|
    index = value.abs % 11
    key_map[index] = [] if !key_map[index]

    key_map[index].push(value)
  end
  key_map.flatten.select { |val| !val.nil? }
end

p hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])
# => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]

p hash_table([2, 341, 73, 8265, 234004, 602, 7400000, 200000000])
# => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]
