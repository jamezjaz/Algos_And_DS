def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  # Your code here
  # guess the result/split the number into two
  return 1 if number === 1
  return min_interval if max_interval - min_interval <= 1
  middle = (min_interval + max_interval)/2
  if middle * middle === number
    return middle
      # get the new lower limit
    elsif middle * middle < number
      min_interval = middle
      # get the new upper limit
    else 
      max_interval = middle
  end
  # puts "Number: #{number}"
  # puts"Min Interval: #{min_interval}"
  # puts "Max Interval: #{max_interval}"
  sqrt_recursive(number, min_interval, max_interval)
end

puts sqrt(25)
puts sqrt(7056)
puts sqrt(30)
puts sqrt(1)
  