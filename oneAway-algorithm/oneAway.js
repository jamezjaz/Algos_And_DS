// There're three types of edits that can be performed on strings:
// - insert a character
// - remove a character and
// - replace a character
// given two strings, write a method to determine if they're one edit away from each other
// STEPS:
// if the strings are identical, return false (because there's 0 edit)
// create hashmaps for both strings
// check if each character are of same type and value:
  //  if they're not, increase the counter
// if the counter is 2 or more, then return false
// return true
const oneEdit = (str1, str2) => {
  // if the strings are identical, return false
  if (str1 === str2) {
    return false;
  }
  // hashmap
  const obj1 = {}
  const obj2 = {};
  let counter = 0;
  for (let i=0; i<str1.length; i++) {
    if (!obj1[str1[i]]) {
      obj1[str1[i]] = 1
    } else {
      obj1[str1[i]] += 1
    }    
  };
  for (let j=0; j<str2.length; j++) {
    if (!obj2[str2[j]]) {
      obj2[str2[j]] = 1
    } else {
      obj2[str2[j]] += 1
    }    
  };
  // if the char type and val of both strings aren't the same, return false
//   console.log(obj1);
//   console.log(obj2);
  for (let i in obj1) {
    // console.log(obj1[i]);
    if (obj1[i] !== obj2[i]) {
      counter += 1;
    } else if (counter > 1) {
      return false;
    }
  }
  // console.log(obj1);
  return true;
};

const str1 = 'pale';
const str2 = 'ple';
const str3 = 'pale';
const str4 = 'bake';

console.log(oneEdit(str1, str2));
console.log(oneEdit(str3, str4));
