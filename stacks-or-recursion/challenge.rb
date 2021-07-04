# 1 Create a queue and push the root to it. Initialize height as 0.
# 2 While the queue is not empty repeat steps 3 and 4.
# 3 At this moment the queue contains one level of the tree. Increment height by 1. Initialize a variable size as the size of the queue.
# 4 Run a loop from 1 to size, and at each iteration remove an element from the queue and push its children to the queue. This step will remove one level from the queue and push the next level to it.
# 5 Return height.

# def tree_height(tree_as_list)
#   # your code here
#   return 0 if tree_as_list == nil
#   # return 0 if tree_as_list.length == 0
#   stack = []
#   stack.push(tree_as_list[0])

#   height = 0

#   while !stack.empty?
#     height += 1
#     stackSize = stack.size
#     i = 0
#     while i < stackSize
#       i += 1
#       stack.pop()
#       if left != nil
#         stack.push(left[i])
#       end
#       if right != nil
#         stack.push(right[i])
#       end
#     end

#   end
#   # puts stackSize
#   height
#   # p tree_as_list
#   # puts stack
# end

# def left(i)
#   2*i+1
# end

# def right(i)
#   2*i+2
# end

def tree_height(tree_as_list)
  len = tree_as_list.length

  h = 0
  while len >= 2**h
    h += 1
  end
  h
end

puts tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# => 4

puts tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])
# => 4
