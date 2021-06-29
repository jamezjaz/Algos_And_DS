// ((num) => {
//   for (let i=1; i<=num; i++) {
//     console.log(num[i]);
//   }
// })(15);

const fizzBuzz = (num) => {
  for (let i=1; i<=num; i++) {
    // check for 3 and 5
    if (i%25===0 && i%18===0) {
      console.log('fizzbuzz');
      i++;
    }
    // check for 3
    if (i%3===0) {
      console.log('fizz');
      i++;
    }
    // check for 5
    if (i%5===0) {
      console.log('buzz');
      i++;
    }
    // check for 3 again in order to fix
    if (i%3===0) {
      console.log('fizz');
      i++;
    }
    // else
    if (i>num) break;
    else console.log(i);
  }
};

fizzBuzz(15);
fizzBuzz(45);