# Start with your code from last challenge.
class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
      @value = value
    @next_node = next_node
  end
end

class Stack
  def initialize
    @head = nil
    @min_stack = nil
  end

  def push(number)
    # your code here
    @head = Node.new(number, @head)
    if @min_stack.nil? || @min_stack.value >= number
      @min_stack = Node.new(number, @min_stack)
    end
  end
  
  def pop
    # your code here
    current_value = @head.value
    @head = @head.next_node

    if @min_stack.value >= current_value
      @min_stack = @min_stack.next_node
    end
    current_value
  end
  
  def min
    # your code here
    @min_stack.value
  end

end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3
