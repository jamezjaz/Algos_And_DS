class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  # def initialize
  #   @root = nil
  # end

  def insert(node = @root)
    #your code here
    # newNode = Node.new(node)
    if !@root
      @root = node
    end

    current = @root
    # return nil if node.data === current.data
    while !current.nil?
      return nil if node.data === current.data
      if node.data <= current.data
        if !current.left
          current.left = node
        end
        current = current.left
        insert()
      end
      if node.data > current.data
        if !current.right
          current.right = node
        end
        current = current.right
        insert()
      end
    end
  end

  def pre_order(node = @root)
    #implementation from the previous challenge
    if node == nil
      return ''
    end
  
    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end
end

def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"
