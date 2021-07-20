function isMatch(text, pattern) {
  // your code goes here

  if (pattern.length === 0) return text.length === 0;

  let match = false;
  if(text.length > 0){
    if (text[0] === pattern[0] || pattern[0] === '.')
      match = true;
  }

  if (pattern.length >= 2 && pattern[1] === '*') {
    return isMatch(text, pattern.substring(2)) || (match && isMatch(text.substring(1), pattern));
  }

  else return match && isMatch(text.substring(1), pattern.substring(1));
};

console.log(isMatch('abbb', 'ab*'));
// true
console.log(isMatch('mississippi', 'mis*is*p*.'));
// false
console.log(isMatch('acd', 'ab*c.'));
// true