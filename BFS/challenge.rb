def bfs(graph)
  # write your code here
  traversed = Array.new(graph.keys.length, false)
  queue = []
  queue.push(0)
  traversed[0] = true
  result = []

  while !queue.empty?
    current = queue.shift
    result.push(current)

    graph[current].each do |adj|
      queue.push(adj) if !traversed[adj]
      traversed[adj] = true
    end
  end
  result
end

p bfs({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]
