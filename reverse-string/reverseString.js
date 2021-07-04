// convert string to an array
// reverse the array
// convert the array back to string

const reverseString = (str) => {
  // convert str to array
  const newArr = str.split('')
//   console.log(newArr);

//   reverse the array
  const reversedArr = newArr.reverse();
//   console.log(reversedArr);
  return reversedArr.toString();
};

console.log(reverseString('apple'));

// e,l,p,p,a
