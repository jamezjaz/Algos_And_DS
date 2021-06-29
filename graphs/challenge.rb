def graph(hash_graph)
  # write your code here
  # p hash_graph
  traversed = Array.new(hash_graph.keys.length, false)
  stack = [0]
  traversed[0] = true
  result = []

  while !stack.length.nil?
    vertex = stack.pop
    traversed[vertex] = true
    result.push(vertex)
    if vertex === 4
      return result
    end

    hash_graph[vertex].reverse.each do |edge|
      stack.push(edge) unless traversed[edge]
    end
  end
  false
end

hash = { 
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]
