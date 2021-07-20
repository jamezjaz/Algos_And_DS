// STEPS:
// 0. If the root is null, return an empty array
// 1. Define a queue
// 2. Enqueue the root node
// 3. Define result array
// 4. As long as the queue is not empty;
// 5. Define current level
// 6. Iterate the size of the queue
// 7. Dequeue from the queue and push the result to current level
// 8. If the left and right children of the dequeued element !== null, push them to the queue
// 9. Push current level to result and return it

const levelOrder = (root) => {
  if (root == null) {return []};
    
  const queue = [];
  queue.push(root);
    
  const result = [];
    
  while (queue.length !== 0) {
    const currentLevel = [];
    const len = queue.length;
    for (let i=0; i<len; i++) {
      const dequeued = queue.shift();
      currentLevel.push(dequeued.val);
        
      if (dequeued.left !== null) {
        queue.push(dequeued.left);
      };
        
      if (dequeued.right !== null) {
        queue.push(dequeued.right);            
      };
    }
    result.push(currentLevel);
  }
  return result;
};

const root = [3,9,20,null,null,15,7];
const root2 = [1];
const root3 = [];

console.log(levelOrder(root));
// [[3],[9,20],[15,7]]
console.log(levelOrder(root2));
// [[1]]
console.log(levelOrder(root3));
// []

// NB: val, left, and right aren't defined