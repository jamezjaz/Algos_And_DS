// Given a string, write a method to check if it's a palindrome permutation
// STEPS:
// remove white space (of course we don't need whites paces to form a palindrome)
// create a hashmap
// check if the string length is odd - return false if there's more than one odd character count
// if the string length is even - return false if there's no even number character count
// return true
const palindromePermutation = (str) => {
  // remove white spaces
  const newstr = str.replace(/\s+/g, '');
//   return newstr;

  const obj = {};
  for (let i=0; i<newstr.length; i++) {
    if (!obj[newstr[i]]) {
      obj[newstr[i]] = 1
    } else {
      obj[newstr[i]] += 1          
    }
    //   console.log(obj[newstr[i]]);
  }
  // console.log(obj);

  const objArr = Object.values(obj);
  // console.log(objArr);

  // check if string length is odd
  if (newstr.length%2 == 1) {
    //return false if more than one odd number char count
    let counter = 0;
    for (let i of newstr) {
      if (obj[i]%2 === 1 || obj[i] === 1) {
        counter += 1;
      }
      if (counter > 1) {
        return false;
      }
    }
    // if string length is even
  } else {
    for (let i of newstr) {
      if (obj[i]%2 !== 0) {
        return false;
      }
    }
  }
  return true;
};

const str = 'tact coa';
const str2 = 'PUIPIP';
// NB: tact coa is a permutation of the palindrome tacocat

console.log(palindromePermutation(str));
console.log(palindromePermutation(str2));

// true
// false