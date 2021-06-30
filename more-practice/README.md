## How to solve this challenge?

1. Read the "Challenge description" below.
2. Make changes to the [challenge.rb](./challenge.rb) file.
3. Commit your changes.
4. Wait for the result of the "GitHub Classroom Workflow" action. If it is green - congratulations, you solved this challenge! If not - try again!
5. *You can watch an example of how to solve a challenge in [this video](https://microverse.pathwright.com/library/fast-track-algorithms-data-structures/69123/path/step/113963868/)*

Note: We use RSpec for checking your solution with unit tests. You can [install](https://github.com/rspec/rspec) it and use it in your local environment if you like.


## Challenge description

### More Practice

Hash and Sets are useful in a wide variety of challenges. Below is another practice challenge.

#### Challenge
Given a list of numbers, can you find all the pairs of numbers whose sum equals **k**?

#### Input

The provided function takes 2 parameters: an array `array`, and the special number `k`. 

#### Output

Return an Array with the pairs of numbers. Print each pair with the first number followed by the second, and print all the pairs in the order that the `second` number appears in the list.

#### Sample Input/Output

#### Example
```
p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]
```

`12` is the special number. There are 2 pairs with that sum: `1` & `11` and `9` & `3`. `11` appears before `3` in the input, so that pair is printed first.

#### Full Credit
Solve the problem with only one iteration through the numbers.


