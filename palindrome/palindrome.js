

const palindrome = (str) => {
  const newString = str.split('');
//   console.log(newString);
  const reversedString = newString.reverse().join('')
//   console.log(reversedString);

  if (str == reversedString) {
    return true
  } else {
    return false
  }
};

console.log(palindrome('madam'));
console.log(palindrome('james'));
console.log(palindrome('abba'));

// true
// false
// true