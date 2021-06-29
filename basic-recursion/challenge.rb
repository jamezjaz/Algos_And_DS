def sum(number)
  # Your code here
  number > 0 ? number + sum(number - 1) : 0
end

puts sum(4)
puts sum(10)
