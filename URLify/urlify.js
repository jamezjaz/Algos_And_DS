// Write a function to replace all spaces in a string with "%20".
// STEPS:
// create a new string (where the result would be concatenated)
// iterate through the string
// if ' ' is present in the string, replace with '%20 else concatenate the regular string to the new string

const urlify = (str) => {
  let newStr = '';
  for (let s=0; s<str.length; s++) {
    // console.log(str[s]);
    // if (str[s] === ' ') {
    if (str[s].includes(' ')) {
      newStr += '%20'
    } else {
      newStr += str[s]
    }
  }
  return newStr;
};

const str = 'Mr James is a Dev';

console.log(urlify(str));
// Mr%20James%20is%20a%20Dev