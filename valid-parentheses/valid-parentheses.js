// return true if the string is empty
// return false if the langth of the string is less than 2
// create a object with the parentheses as key-value pairs
// create a stack
// loop through the string and check if the elements of the string are present in the object
// push the current element to the stack if it's present on the obj
// if the current element is not present on the obj, pop from the stack
// return false if the index of the popped item of the obj !== the current element of the string
// return false if the length of the satck == 0
// then return true

const isValid = s => {
  if (s === '') {
    return true;
  }

  if (s.length < 2) {
    return false;
  }

  const obj = {
    '(': ')',
    '[': ']',
    '{': '}'
  };

  const stack = [];
  for (i = 0; i < s.length; i++) {
    // const current = s[i];
    if (obj[s[i]]) {
      stack.push(s[i]);
    } else {
      const popped = stack.pop();
      if (obj[popped] !== s[i]) {
        return false;
      }
    }
  }

  // check for cases like ((
  if (stack.length > 0) {
    return false;
  }
  return true;
};

const str = '()[]{}';
// true
const str2 = '([)]';
// false
const str3 = '{[]}';
// true
console.log(isValid(str));