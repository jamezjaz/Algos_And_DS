// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
// STEPS:
// Create a hashMap
// Iterate through the nums array
// Define the current number
// Define required number and set to target - current number
// If the required number is not in the hashmap, set the current number as the key and its index as the value of the hashmap
// If it's in the hashmap, return required number index and the index

const twoSum = (nums, target) => {    
  const hashMap = {};
  
  for (i = 0; i < nums.length; i++) {
    const currentNum = nums[i];
    const requiredNum = target - currentNum;
    
    if (hashMap[requiredNum] === undefined) {
      hashMap[currentNum] = i;
    } else {
      return [hashMap[requiredNum], i];
    }
  };
};

const nums = [2,7,11,15], target = 9;
const nums2 = [3,2,4], target2 = 6;
const nums3 = [1,5,7,-5,10], target3 = 5;

console.log(twoSum(nums, target));
// [0,1]
console.log(twoSum(nums2, target2));
// [1,2]
console.log(twoSum(nums3, target3));
// [3,4]