
# Start with your code from LinkedList challenge.
class Queue
  def initialize
    @items = Array.new
  end

  def add(number)
    # your code here
    @items.push(number)
  end
  
  def remove
    # your code here
    if isEmpty()
      return -1
    end
    return @items.shift()
  end

  # front
  def front
    if isEmpty()
      return 'No item'
    end
    return @items[0]
  end

  # isEmpty
  def isEmpty
    @items.length === 0
  end

  def printQueue
    @items.map { |i| puts i }
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1
