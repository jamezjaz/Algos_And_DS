class Node
	attr_reader :data
	attr_accessor :left, :right
	
	def initialize data
		@data = data
	end
end

def array_to_tree(array, index = 0)
  # use your function from the previous challenge
  return nil if index >= array.length || array[index] == 0

  node = Node.new(array[index])
  node.left = array_to_tree(array, 2*index+1)
  node.right = array_to_tree(array, 2*index+2)

  node
end

def search_tree?(array)
  root = array_to_tree(array, 0)
  # write your code here
  valid_tree(root)
  # p array
end

# new recursive function
# def valid_tree(root)
#   return true if root.nil?

#   if root.left && root.left.data <= root.data
#     # if root.left.data <= root.data
#     # return true
#       validLeft = valid_tree(root.left)
#       if !validLeft
#         return false
#       end
#     # end
#   else
#     return false
#   end
#   if root.right && root.right.data <= root.data
#     # if root.right.data <= root.data
#     # return true
#       validRight = valid_tree(root.right)
#       if !validRight
#         return false
#       end
#     # end
#   else
#     return false
#   end
#   return true
# end

def valid_tree (root, min = nil, max = nil)
  # an empty node means the current branch is valid
  return true if root.nil?
  # if there's a min constraint and the current node is less than that, then the current branch is invalid
  if min && root.data < min
    return false
  end
  # if there's a max constraint and the current node is greater than that, then the current branch is invalid
  if max && root.data > max
    return false 
  end
  # recursive calls
  # the first one validates the left subtree 
  # the second one validates the right subtree
  valid_tree(root.left, min, root.data) && valid_tree(root.right, root.data, max)
end


puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false

puts search_tree?([20, 10, 27, 12, 14, 23, 30])
# => false

puts search_tree?([19, 9, 26, 4, 13, 17, 29])
# => false

puts search_tree?([20, 10, 27, 5, 14, 23, 30])
# => true

puts search_tree?([20, 10, 27, 5, 14, 23, 30, 0, 12, 0, 0, 0, 0, 0, 0])
# => false
  
puts search_tree?([21, 11, 26, 5, 14, 23, 30, 2, 8, 13, 16, 0, 0, 0, 0])
# => true
  