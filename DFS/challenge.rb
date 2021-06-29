def depth_first_search(graph)
  # write your code here
  # p graph
  traversed = Array.new(graph.keys.length, false)
  stack = []
  stack.push(0)
  traversed[0] = true
  result = []

  while !stack.empty?
    current = stack.pop
    result.push(current)

    graph[current].reverse.each do |i|
      stack.push(i) if !traversed[i]
      traversed[i] = true
    end
  end
  result
end

p depth_first_search({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 4, 1, 3]
