## How to solve this challenge?

1. Read the "Challenge description" below.
2. Make changes to the [challenge.rb](./challenge.rb) file.
3. Commit your changes.
4. Wait for the result of the "GitHub Classroom Workflow" action. If it is green - congratulations, you solved this challenge! If not - try again!
5. *You can watch an example of how to solve a challenge in [this video](https://microverse.pathwright.com/library/fast-track-algorithms-data-structures/69123/path/step/113963868/)*

Note: We use RSpec for checking your solution with unit tests. You can [install](https://github.com/rspec/rspec) it and use it in your local environment if you like.


## Challenge description

### Lists  

Create your own LinkedList  class for storing integers which should include two methods:  
add(number) - Add a new Node to the end of the list with a value of number. Nothing needs to be returned. 
get(index) - Return the value of the Node at position `index` in the List.   

Example  

```

This is an example of a test case:  

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)
# => 5
```


The 2 add operations create the list: [3, 5]. 
The get operation, gets the number located at position 1. 
