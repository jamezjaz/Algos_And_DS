const array = [5, 1, 0, 3, 7, 3, 7, 9, 22, 43, 2];

const quickSort = (array) => {
  if (array.length <= 1) {
    return array;
  };

  const pivot = array[0];
  const left = [];
  const right = [];

  for (i = 1; i < array.length; i++) {
    array[i] < pivot ? left.push(array[i]) : right.push(array[i])
  };

  return quickSort(left).concat(pivot, quickSort(right));
};

const sorted = quickSort(array);
console.log(sorted);