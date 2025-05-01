/*
* Problem:
  Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that 
  i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

  Notice that the solution set must not contain duplicate triplets.

* Example 1:
  Input: nums = [-1,0,1,2,-1,-4]
  Output: [[-1,-1,2],[-1,0,1]]

* Explanation: 
  nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
*/

/*
* Solution steps:
  1. We need to sort the array
  2. We need to iterate through the arrray of course,
      but it must be with exception on the last two element,
      becuase we are dealing with three sum & we need 2 more numebrs to complete the third
  3. We need to skip duplicate
  4. At this point we will implement the 2 sum approach
      so we initialise the two pointers

*/

// Two Pointer.
// Time Complexity: O(n²)
// Space Complexity: O(1)
List<List<int>> threeSum(List<int> nums) {
  //The arrays must be sorted first in three sum.
  nums.sort();

  List<List<int>> result = [];

  for (int i = 0; i < nums.length - 2; i++) {
    if (i > 0 && nums[i] == nums[i - 1]) continue; //Skip duplicate.

    int left = i + 1;
    int right = nums.length - 1;

    while (left < right) {
      int sum = nums[i] + nums[left] + nums[right];

      if (sum == 0) {
        //Then we have found a valid Triplet
        result.add([nums[i], nums[left], nums[right]]);

        //Skip duplicate for left & right.
        while (left < right && nums[left] == nums[left + 1]) left++;
        while (left < right && nums[right] == nums[right - 1]) left--;

        left++;
        right--;
      } else if (sum < 0) {
        left++;
      } else {
        right--;
      }
    }
  }

  return result;
}

//HasMap
List<List<int>> threeSumHashMap(List<int> nums) {
  nums.sort();
  List<List<int>> result = [];

  for (int i = 0; i < nums.length - 2; i++) {
    if (i > 0 && nums[i] == nums[i - 1]) continue;

    Map<int, int> map = {};
    int target = -nums[i];

    for (int j = i + 1; j < nums.length; j++) {
      int complement = target - nums[j];

      if (map.containsKey(complement)) {
        result.add([nums[i], complement, nums[j]]);
        while (j + 1 < nums.length && nums[j] == nums[j + 1]) j++;
      }

      map[nums[j]] = j;
    }
  }

  return result;
}
