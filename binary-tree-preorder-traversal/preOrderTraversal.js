// Binary Tree PreOder Traversal
// STEPS:
// Create result array
// Check base case; return result if root === null
// Create a stack
// Push root node to the stack
// While stack !== 0
// Pop from the stack and push it to result array
// If the right and left children of the popped element are not null, push them to stack
// Return result

const preOrderTraversal = (root) => {
  const result = [];
    
  if (root == null) return result;
    
  const stack = [];
  stack.push(root);
  
  while (stack.length !== 0) {
    const poppedElem = stack.pop();
    result.push(poppedElem.val);
      
    if (poppedElem.right !== null) {
      stack.push(poppedElem.right);
    };
      
    if (poppedElem.left !== null) {
      stack.push(poppedElem.left);
    };
  }
  return result;
};

const root = [1,null,2,3];

console.log(preOrderTraversal(root));
// [1, 2, 3]

// NB: val, left, and right aren't defined