// create an array called 'chunked' = []
// get the last chunked array
// check if last exist OR size of last equals to num. if it does, push into 'chunked' ELSE push into 'last'
// return 'chunked'

const arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
const num = 2;

const chunkedArr = (arr, num) => {
  const chunked = [];

  for (let elem=0; elem<arr.length; elem++) {
    let last = chunked[chunked.length-1];

    if (!last || last.length === num) {
      chunked.push([elem]);
    } else {
      last.push(elem);
    }
  }
  return chunked;
};

console.log(chunkedArr(arr, num));