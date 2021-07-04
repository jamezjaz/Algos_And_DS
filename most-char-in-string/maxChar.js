  // create a hashmap
  // create an object
  // if the char of str does not exist in obj, then set its value to 1
  // if does, then increment

const str = 'heLLLoo$$3p';

const maxChar = (str) => {
  const hash = {};

  for (let i=0; i<str.length; i++) {
    if (!hash[str[i]]) {
      hash[str[i]]=1
    } else {
      hash[str[i]] += 1
    }
    // console.log(hash);
  }

  // Good approach (using Math.max() and apply())
  // const max = Math.max.apply(null, Object.values(hash));
  // console.log(max) // 5

  const objVal = Object.values(hash);
    // console.log(objVal)
    const maxVal = Math.max(...objVal);
    console.log(maxVal);
};

maxChar(str);