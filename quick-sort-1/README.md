## How to solve this challenge?

1. Read the "Challenge description" below.
2. Make changes to the [challenge.rb](./challenge.rb) file.
3. Commit your changes.
4. Wait for the result of the "GitHub Classroom Workflow" action. If it is green - congratulations, you solved this challenge! If not - try again!
5. *You can watch an example of how to solve a challenge in [this video](https://microverse.pathwright.com/library/fast-track-algorithms-data-structures/69123/path/step/113963868/)*

Note: We use RSpec for checking your solution with unit tests. You can [install](https://github.com/rspec/rspec) it and use it in your local environment if you like.


## Challenge description

### QuickSort1

The first step of Quicksort is to partition an array into two parts.

#### Challenge
Given an array 'array' and a number 'p' in the first cell in the array, can you partition the array so that all elements greater than 'p' are to the right of it and all the numbers smaller than 'p' are to its left?
For example, if given the following as input:
```
4 5 3 9 1
```

The first number 4 is the pivot, so you should put the smaller numbers to the left, and the larger to the right, and output:
```
3 1 4 5 9
```

The array should otherwise remain in the same order.

Can you write code to partition an array?

#### Example
```
p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]
```


