## How to solve this challenge?

1. Read the "Challenge description" below.
2. Make changes to the [challenge.rb](./challenge.rb) file.
3. Commit your changes.
4. Wait for the result of the "GitHub Classroom Workflow" action. If it is green - congratulations, you solved this challenge! If not - try again!
5. *You can watch an example of how to solve a challenge in [this video](https://microverse.pathwright.com/library/fast-track-algorithms-data-structures/69123/path/step/113963868/)*

Note: We use RSpec for checking your solution with unit tests. You can [install](https://github.com/rspec/rspec) it and use it in your local environment if you like.


## Challenge description

### Maps

A Map is also known as a Dictionary, since it can be used to store items in a similar manner as a dictionary, where each word maps to a specific definition. These are the basic methods of a Map:
- [key] = value - Adds the key and value to the map, so they are now associated with each other. If this key was already in the Map, it will now point to the new value only.
- [key] - Returns the value that the key maps to.
- delete(key) - Removes the key-value mapping of this key from the map.
- has_key?(key) - This returns true if the key is in the map and false otherwise (like the contains method of Set).

#### Map in Ruby
Ruby standard library has the class Hash.
https://ruby-doc.org/core/Hash.html

#### Challenge
Return the number in each list that appears the most times.

#### Example
```ruby
array = [1, 2, 3, 1, 5]

appears_most_times(array)
# => 1
```
