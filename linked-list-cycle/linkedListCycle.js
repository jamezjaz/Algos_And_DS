// Linked List Cycle (Check if a linked list has a cycle/loop in it)
// STEPS:
// Create slow and fast pointers
// Check if slow and fast pointers will meet;
// While fast is not null and fast.next is not null;
// Set fast = fast.next.next (because fast has to move twice)
// Set slow = slow.next (slow has to move only once)
// If slow == fast, return true
// Otherwise, return false

const hasCycle = (head) => {    
  let slow = head, fast = head;
  
  while (fast !== null && fast.next !== null) {
    fast = fast.next.next;
    slow = slow.next;
      
    if (slow == fast) return true;
  }
  return false;
};

const head = [3,2,0,-4];
const head2 = [1];

console.log(hasCycle(head));
// true
console.log(hasCycle(head2));
// false

// NB: Remember next is not defined