def move(starting, goal)
  # your code here
  intermediate = ([1, 2, 3] - [starting, goal]).first
  "#{starting}->#{intermediate} #{starting}->#{goal} #{intermediate}->#{goal}"
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
