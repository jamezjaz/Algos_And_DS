// Given two strings, write a method that decide if one is a permutaion of the other
// STEPS:
// check if they're the same exact strings, if they're the same, return true - else
// check the length of both strings, if the length are the same, then
// create object of each one and loop through them, then
// if the object keys aren't present, set it 1, else increment it
// check if the object character count are equal, return true if they're equal

const isPermutation = (str1, str2) => {
    // check if they're the same exact strings, if they're the same, return true
    if (str1 === str2) {
      return true;
    } else {
      // check the length of both strings, if the length are the same, then
      if (str1.length !== str2.length) {
        // create object of each one and loop through them, then
        return false;
      } else {
        const obj1 = isObj(str1);
        const obj2 = isObj(str2);
        // check if the object character count are equal, return true if they're equal
        for (let i in obj1) {
          if (obj1[i] !== obj2[i]) {
            return false
          }
        }
      }
    }
    return true;
  };
  
  const isObj = (str) => {
    let obj = {};
    for (let i of str) {
      if (!obj[str[i]]) {
        obj[str[i]] = 1
      } else {
        obj[str[i]] += 1
      }
    }
    return obj;
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