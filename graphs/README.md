## How to solve this challenge?

1. Read the "Challenge description" below.
2. Make changes to the [challenge.rb](./challenge.rb) file.
3. Commit your changes.
4. Wait for the result of the "GitHub Classroom Workflow" action. If it is green - congratulations, you solved this challenge! If not - try again!
5. *You can watch an example of how to solve a challenge in [this video](https://microverse.pathwright.com/library/fast-track-algorithms-data-structures/69123/path/step/113963868/)*

Note: We use RSpec for checking your solution with unit tests. You can [install](https://github.com/rspec/rspec) it and use it in your local environment if you like.

## Challenge description

### Graphs

#### Representing a Graph

A Node in a real-world graph represents something unique, such as a city on a map, or a person in a network. When studying graphs, the nodes can just be labeled with a unique number starting from 0, so they're easy to work with.

There are many ways to represent a graph in a computer. A good structure should balance using space efficiently and performing operations quickly. As seen with Trees, you could represent the data with individual Nodes. However, this wouldn't let you quickly access any Node in the graph. A good alternative is to create an array or list to represent all the nodes. Each cell in the list can then store a list of all the Nodes that are connected to that Node.

For example, the following graph can be represented as shown below:

![image](https://user-images.githubusercontent.com/36057474/105399982-9c8d0e00-5c24-11eb-9f28-1860c63b8515.png)

```
index|list of connected nodes
-----------------------------
0    |2
1    |4
2    |5 0 3
3    |2
4    |1 5
5    |4 2
```

This shows the connections between nodes 0 and 2, nodes 1 and 4, etc.

Challenge

You will be given lists of numbers as input based on the above format. Then start from Node 0 and repeatedly visit the next connected node until you reach Node 4. You need to return an array with all the nodes visited.

While Nodes don't necessarily have a set order for their connections, in this challenge you should go to the first Node in the list of connected nodes.  For example, in the above graph:
- go from 0 to 2
- then go from 2 to 5 (ignore 0 and 3)
- then go from 5 to 4 (ignore 2)
- then stop as 4 is a number we were looking for.

```rb
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
```

