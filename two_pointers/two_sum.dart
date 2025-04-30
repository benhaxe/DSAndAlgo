/*
* Problem:
  Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, 
  find two numbers such that they add up to a specific target number. 
  Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 <= numbers.length.

  Return the indices of the two numbers, index1 and index2, added by one as an integer array [index1, index2].

*Example 1:
  Input: numbers = [2,7,11,15], target = 9
  Output: [1,2]
  Explanation: The sum of 2 and 7 is 9. Therefore, index1 = 1, index2 = 2. We return [1, 2].

*Example 2:
  Input: numbers = [2,3,4], target = 6
  Output: [1,3]
  Explanation: The sum of 2 and 4 is 6. Therefore index1 = 1, index2 = 3. We return [1, 3].

*Constraints:
  - 2 <= numbers.length <= 3 * 10^4
  - -1000 <= numbers[i] <= 1000
  - numbers is sorted in non-decreasing order
  - -1000 <= target <= 1000
  - The tests are generated such that there is exactly one solution
*/

//TWO SUM, Two Pointer
List<int> twoSum(List<int> nums, int target) {
  int left = 0;
  int right = nums.length - 1;

  //We will keep looping until the poniters [left & right] cross each other
  //This is to ensure we have pointed to all element in the array.
  while (left < right) {
    //check if the indices of teh pointers equate to the target.
    int sum = nums[left] + nums[right];
    if (sum == target) {
      return [left + 1, right + 1]; //+1 becuase it is a 1-indexed array.
    } else if (sum < target) {
      left++;
    } else {
      right--;
    }
  }

  return [left + 1, right + 1];
}

// Time: O(n)
// Space: O(1)

List<int>? twoSumHasMap(List<int> nums, int target) {
  Map<int, int> map = {};

  for (int i = 0; i < nums.length; i++) {
    //Need to know what other number we need to reach teh target.
    int complement = target - nums[i];

    //Just the way the hash map works, if we have seen the complement number before
    //We have found our pair.
    if (map.containsKey(complement)) {
      return [map[complement]! + 1, i + 1];
    }
    //If not, we need to store the current number and it's index in the map.
    map[nums[i]] = i;
  }
  return null;
}

// Time: O(n)
// Space: O(n) -- Disadvantage.
