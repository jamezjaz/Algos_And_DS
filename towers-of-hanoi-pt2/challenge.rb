def hanoi_steps(num_of_discs)
  # your code here
  puts recursive_hanoi(num_of_discs, 1, 3, [])
end

def recursive_hanoi(num_of_discs, starting , goal, res)
  intermediate = ([1, 2, 3] - [starting, goal]).first
  if num_of_discs === 2
    res.push("#{starting}->#{intermediate}")
  else
    recursive_hanoi(num_of_discs - 1, starting, intermediate, res)
  end
  res.push("#{starting}->#{goal}")
  if num_of_discs === 2
    res.push("#{intermediate}->#{goal}")
  else
    recursive_hanoi(num_of_discs - 1, intermediate, goal, res)
  end
end

hanoi_steps(2)
# => 1->2 
#    1->3 
#    2->3

hanoi_steps(3)
# => 1->3 
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3
