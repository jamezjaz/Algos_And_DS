// Given the head of a singly linked list, reverse the list, and return the reversed list.
// STEPS:
// Create pointers  
// As long as current node is not null;
// Set next equal to curr.next, curr.next is equal prev,
// Move pointers;
// Set prev equal to curr, and curr equal to next
// Return prev

const reverseList = (head) => {    
  let previous = null;
  let current = head;
  let next = null;
    
  while (current !== null) {
    next = current.next;
    current.next = previous;
      
    previous = current;
    current = next;
  }
  return previous;
};

const head = [1,2,3,4,5];
const head2 = [1,2];
const head3 = [];

console.log(reverseList(head));
// [5,4,3,2,1]
console.log(reverseList(head2));
// [2,1]
console.log(reverseList(head3));
// []

// NB: next in current.next is not defined