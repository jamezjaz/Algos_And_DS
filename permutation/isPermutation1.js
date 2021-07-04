// Given two strings, write a method that decide if one is a permutaion of the other
// STEPS:
// check if they're the same exact strings, if they're the same, return true - else
// check the length of both strings, if the length are the same, then
// create object of each one and loop through the strings, then
// if the object keys aren't present, set it 1, else increment it
// check if the object character count are equal, return true if they're equal

const isPermutation = (str1, str2) => {
  // check if they're the same exact strings, if they're the same, return true
  if (str1 === str2) {
    return true;
  } else {
    // check the length of both strings, if the length are the same, then
    if (str1.length !== str2.length) {
      // create object of each one
      return false;
    } else {
      const obj1 = {};
      const obj2 = {};
      // loop through the first string, then
      // if the object keys aren't present, set it 1, else increment it
      for (let s of str1) {
        if (!obj1[str1[s]]) {
          obj1[str1[s]] = 1
        } else {
          obj1[str1[s]] += 1
        }
      }
      // loop through the second string, then
      // if the object keys aren't present, set it 1, else increment it
      for (let x of str2) {
        if (!obj2[str2[x]]) {
          obj2[str2[x]] = 1
        } else {
          obj2[str2[x]] += 1
        }
      }
      // check if the object character count are equal, return true if they're equal
      for (let i in obj1) {
        if (obj1[i] === obj2[i]) {
          return true
        } else {
          return false
        }
      }
    }
  }
  return true;
};

const str1 = 'abcd';
const str2 = 'abdc';
const str3 = 'odufu';

console.log(isPermutation(str1, str1));
// true
console.log(isPermutation(str1, str2));
// true
console.log(isPermutation(str1, str3));
// false