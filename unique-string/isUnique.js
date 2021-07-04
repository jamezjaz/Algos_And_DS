// Write an algorithm that determines if a string is unique
// STEPS:
// create an hashmap
// iterate through the string
// if the string is not present in the object, set it to 1 but if there's something inside the object, then increment it
// iterate through the hashmap(object)
// if any of the keys in the object appears more than once, return false else return true

const isUniqueStr = (str) => {
  const obj = {};
  for (let i=0; i<str.length; i++) {
    if (!obj[str[i]]) {
      obj[str[i]] = 1;
    } else {
      obj[str[i]] += 1;
    }
    // console.log(obj[str[i]]);
  }

//   Object.entries(obj).forEach(
//     ([key, val]) => console.log(`${key}: ${val}`)
//   )

  const objArr = Object.values(obj)
//   console.log(objArr);
  for (let j=0; j<objArr.length; j++) {
    // console.log(objArr[j]);
    if (objArr[j] > 1) {
      return false;
    } else {
      return true;
    }
  }
};

const str = 'zxcvbnmasdfghj';

console.log(isUniqueStr(str));