// Implement a method to perform a basic string compression using the counts of repeated characters
// Example:
// 'aabcccccaaa' => 'a2b1c5a3'
// 'abcd' => 'abcd'
//STEPS:
// We a count variable to keep track of each character (count = 1);
// We also need another count variable for cases where each character is unique
/* 
  loop (
    - if str[i] = str[i+1], count++; 
    - increment i
    - else output += str[i]+count
    - uniqueCount++
    - count = 1
    - increment i
  )
  if uniqueCount = str.length, then return str
*/

const strCongression = (str) => {
  let count = 1, output = '', uniqueCount  = 0;
  let len = str.length;

  for (let i=0; i<len; i++) {
    if (str[i] === str[i+1]) count++
    else {
      output += str[i] + count;
      count = 1;
      uniqueCount++;
    }
  }
  if (uniqueCount === len) return str;
  else return output;
};

const str = 'aabcccccaaa';
const str2 = 'abcd';

console.log({
  'aabcccccaa': strCongression(str),
  'abcd': strCongression(str2)
});