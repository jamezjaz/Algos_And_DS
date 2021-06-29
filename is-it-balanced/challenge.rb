class Node
  attr_reader :data
  attr_accessor :left, :right
  
  def initialize data
    @data = data
  end
end

# helper function
def array_to_tree(array, index = 0)
  # use your function from the previous challenge
  return nil if index >= array.length || array[index] == 0

  node = Node.new(array[index])
  node.left = array_to_tree(array, 2*index+1)
  node.right = array_to_tree(array, 2*index+2)
  node
end

# helper function
def height(node)
  # use your function from the previous challenge
  return 0 if node.nil?

  if height(node.left) > height(node.right)
    height(node.left) + 1
  else
    height(node.right) + 1
  end
end

def balanced_tree?(array)
  root = array_to_tree(array)
  # write your code here
  height_balanced?(root)
  # p array
end

# def height_balanced?(root)
#   return true if root.nil?
#   # height of the left subtree
#   leftHeight = height(root.left)
#   # height of the right subtree
#   rightHeight = height(root.right)

#   if (leftHeight - rightHeight).abs > 1
#     return false
#   end
#   height_balanced?(root.left) && height_balanced?(root.right)
# end

def height_balanced?(root)
  return true if root.nil?
  # height of the left subtree
  leftHeight = height(root.left)
  # height of the right subtree
  rightHeight = height(root.right)

  return false if leftHeight - rightHeight > 1
  return false if leftHeight - rightHeight < -1

  height_balanced?(root.left) && height_balanced?(root.right)
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true

puts balanced_tree?([1, 2, 3, 4, 0, 0, 5, 6, 0, 0, 0, 0, 0, 0, 7])
# false

puts balanced_tree?([1, 2, 3, 0, 0, 4, 5, 0, 0, 0, 0, 6, 0, 7, 8])
# false

puts balanced_tree?([1, 2, 3, 4, 5, 0, 0])
# true

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 0, 0, 10, 0, 0])
# true

puts balanced_tree?([1, 2, 3])
# true

puts balanced_tree?([1, 0, 2])
# true

puts balanced_tree?([1, 2, 0, 3, 0, 0, 0])
# false
