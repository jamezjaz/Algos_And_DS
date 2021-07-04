// STEPS:
// convert to a string first
// turn into array
// reverse the array
// convert to string
// convert back to int

const reverseInt = (n) => {
  const nString = n.toString();
  // console.log(nString);
  const nArray = nString.split('');
  // console.log(nArray);
  const reversedArr = nArray.reverse();
  // console.log(reversedArr);
  const nToString = reversedArr.join('');
  console.log(nToString);
  const reversedInt = parseInt(nToString);
  // console.log(reversedInt);

  if (n < 0) {
    return -1 * reversedInt;
  };
  return reversedInt;
};

console.log('testcase1:', reverseInt(511));
console.log('testcase2:', reverseInt(500));
console.log('testcase3:', reverseInt(-15));
console.log('testcase3:', reverseInt(-900));
