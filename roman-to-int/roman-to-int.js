// Define a var that maps each Roman numeral to its value
// Define a result var that stores the converted value from Roman numeral
// Loop through s from left to right
// If the current Roman numeral is less than the next one, we subtract the current from the next else we add them.
// Then we return the result.

const romanToInt = s => {
  const roman = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  };

  let res = 0;

  for (i = 0; i < s.length; i+=1) {
    const current = roman[s[i]];
    const next = roman[s[i+1]];
    if (current < next) {
      res -= current;
      // res += next - current;
    } else {
      res += current;
    }
  }
  return res;
};

const s = 'LVIII';
const s2 = 'MCMXCIV';

console.log(romanToInt(s2));