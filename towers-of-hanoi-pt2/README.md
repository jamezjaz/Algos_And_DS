## How to solve this challenge?

1. Read the "Challenge description" below.
2. Make changes to the [challenge.rb](./challenge.rb) file.
3. Commit your changes.
4. Wait for the result of the "GitHub Classroom Workflow" action. If it is green - congratulations, you solved this challenge! If not - try again!
5. *You can watch an example of how to solve a challenge in [this video](https://microverse.pathwright.com/library/fast-track-algorithms-data-structures/69123/path/step/113963868/)*

Note: We use RSpec for checking your solution with unit tests. You can [install](https://github.com/rspec/rspec) it and use it in your local environment if you like.


## Challenge description

### Towers of Hanoi - Part 2

Create a program that solves the tower of Hanoi. You will be given one number as input - the number of disks on Peg 1. 
Create a method that prints a string with the correct steps to solve the puzzle.


Output Format

Print the peg to move from, an arrow "->", and the peg to move to. For example, to move from peg 1 to peg 3, print:
1->3.
Print a string with all the steps, each step on its own line.


#### Examples

```rb
hanoi_steps(2)
# => 1->2 
#    1->3 
#    2->3

hanoi_steps(3)
# => 1->3 
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

hanoi_steps(4)
# => 1->2 
#    1->3 
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3
```

Get stuck and need some hint?
Check this link: https://gitlab.com/microverse/guides/coding_challenges/hints/blob/master/challenges/recursion/tower-of-hanoi-part-2.md
