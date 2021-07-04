// check if a binary tree is a BST
// STEPS: Using recursion
// create a Node class and intialise val, left, and right
// define an instance of the Node class
// create a recursive helper function and pass in root, min,and max as params
// within this function, return true if root is null
// if min is not null && root.val <= min, return false and
// if max is not null && root.val >= max, return false
// Recursively, call the helper function within the helper helper to check for left and right sub trees;
// a. move towards the left (root.left), min should remain min, max should be root.val
// b. move towards the right (root.right), min should be root.val, max should remain max
// return the recursive helper function in the isValidBST function with root, null, and null as params

class Node {
  constructor(val) {
    this.val = val;
    this.left = null;
    this.right = null;
  }
};

const arrayToTree = (array, idx) => {
  if (idx >= array.length || array[idx] === 0) {
    return null;
  }

  let root = new Node(array[idx]);
  root.left = arrayToTree(array, 2*idx+1);
  root.right = arrayToTree(array, 2*idx+2);

  return root;
};

const isValidBST = (array) => {
  const root = arrayToTree(array, 0);
  return helper(root, null, null);
};

const helper = (root, min, max) => {
  if (root === null) {
    return true;
  };

  if (min !== null && root.val <= min) {
    return false
  };

  if (max !== null && root.val >= max) {
    return false;
  };

  return helper(root.left, min, root.val) && helper(root.right, root.val, max);
};

const array = [2, 1, 3];
const array2 = [5,1,4,null,null,3,6];

console.log(isValidBST(array));
// true
console.log(isValidBST(array2));
// false