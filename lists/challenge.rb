class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail

  def add(number)
    # your code here
  end

  def get(index)
    # your code here
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)
# => 5
