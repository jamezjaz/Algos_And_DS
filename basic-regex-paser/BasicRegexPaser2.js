const isMatch = (text, pattern) => {
  // your code goes here 
  return (text.match('^'+pattern+'$')) ? true : false;
};

console.log(isMatch('abbb', 'ab*'));
// true
console.log(isMatch('aa', 'a*'));
// false
console.log(isMatch('acd', 'ab*c.'));
// true