function kLargest(arr, k) {
  // sort arr in desc order
  sortedArr = arr.sort((a, b) => b-a);
  // console.log(sortedArr);

  // iterate through the sorted array
  // for (let i = 0; i < sortedArr.length; i++) {
  //   return sortedArr[i];
  // }

  // OR
  // fetch the max element using JS spread operator
  const max = Math.max(...sortedArr);
  return max;
};

const arr = [ 1, 23, 12, 9, 30, 2, 50 ];
console.log(kLargest(arr, 1));