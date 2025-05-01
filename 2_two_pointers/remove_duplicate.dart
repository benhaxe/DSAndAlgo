/*
  *Problem:
    Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that 
    each unique element appears only once. The relative order of the elements should be kept the same.

    Since it is impossible to change the length of the array in some languages, you must instead have 
    the result be placed in the first part of the array nums. More formally, if there are k elements 
    after removing the duplicates, then the first k elements of nums should hold the final result.

    Return k after placing the final result in the first k slots of nums.

  *Example 1:
    Input: nums = [1,1,2]
    Output: 2, nums = [1,2,_]
    Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.

  *Example 2:
    Input: nums = [0,0,1,1,1,2,2,3,3,4]
    Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
  Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.

  *Constraints:
    - 1 <= nums.length <= 3 * 10^4
    - -100 <= nums[i] <= 100
    - nums is sorted in non-decreasing order
*/

// Time Complexity: O(n)
// Space Complexity: O(1)

//Slow pointer tracks the last unique element.
//Fast pointer scans through the array.
int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  int slow = 0;
  for (int fast = 1; fast < nums.length; fast++) {
    if (nums[fast] != nums[slow]) {
      slow++;
      nums[slow] = nums[fast];
    }
  }

  return slow + 1;
}
