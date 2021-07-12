// Given the root of a binary search tree, and an integer k, return the kth (1-indexed) smallest element in the tree.
// Input: root = [3,1,4,null,2], k = 1
// Output: 1
// STEPS: 
// Use DFS to add values to an array
// Return the kth index of that array
// 1. Create an empty values array
// 2. Define a recursive function and pass root and values as params
// 3. Traverse to the left of the tree, recursively check the left of the tree (pass values as params in the recursive funtion)
// 4. push root value into values array
// 5. Traverse to the right of the tree, recursively check the right of the tree (pass values as params in the recursive funtion)
// 6. Run dfs and populate values array

const kthSmallest = (root, k) => {
  // Create an empty values array
  const values = [];
  // Define a recursive function and pass root and values as params
  const dfs = (root, values) => {
    // Traverse to the left of the tree, recursively check the left of the tree
    if (root.left) {
      dfs(root.left, values);
    };
    values.push(root.val);
    // Traverse to the right of the tree, recursively check the right of the tree
    if (root.right) {
      dfs(root.right, values);
    };
  };
  // Run dfs and populate values array
  dfs(root, values);
  return values[k-1];
};

const tree = [3,1,4,null,2];
console.log(kthSmallest(tree, 1));