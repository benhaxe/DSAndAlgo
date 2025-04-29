//LeetCode #238
// * Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
// * INPUT: [1,2,3,4]
// * Output: [24,12,8,6]
// * Explanation: We will do 2 passes in the array [prefix] & multiply the suffix.
/* 
  * Logic
    First pass: Store the product of all elements to the left of each index
    Second pass: Multiply each position by the product of all elements to the right
 */
List<int> productExceptSelf(List<int> nums) {
  int n = nums.length;
  List<int> result = List.filled(n, 1);

  // First pass: Calculate products of numbers to the LEFT of each index
  int leftProduct = 1;
  for (int i = 0; i < n; i++) {
    result[i] = leftProduct; // Store product of numbers to the left
    leftProduct *= nums[i]; // Update for next position
  }

  // Second pass: Calculate products of numbers to the RIGHT of each index
  int rightProduct = 1;
  for (int i = n - 1; i >= 0; i--) {
    result[i] *= rightProduct; // Multiply with product of numbers to the right
    rightProduct *= nums[i]; // Update for next position
  }

  return result;
}
