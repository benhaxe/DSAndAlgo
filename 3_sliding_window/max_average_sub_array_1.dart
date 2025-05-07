// Leetcode 643
/**
 * You are given an iteger arrray nums consisting of n elements, and integer k
 * Find a contiguous subarray whose length is equal to k that has the maximum avearge value
 * and return this value.
 * 
 * Input: nums = [1,12,-5,-6,50,3], k = 4
 * Output: 12.7500
 * Explanation: Maximum avearge is (12 - 5 - 6 + 50) / 4 = 51 / 4 = 12.75
 * */

/**
 * To Solve this
 * * Use a window of size K , that is a sub array of size k
 * * Slide 1 element at a time
 * * update the windows by subtracting the element leaving the window 
 * * adding the element that is entering the window
 */

num findMaxAverage(List<int> nums, int k) {
  int currentSum = 0;
  int maxSum = 0;

  for (int i = 0; i < k; i++) {
    currentSum += nums[i];
  }

  maxSum = currentSum;

  //Slide the window across the array.
  for (int i = k; i < nums.length; i++) {
    //Remove element leaving windown & add element entering
    currentSum += nums[i] - nums[i - k];
    maxSum = currentSum > maxSum ? currentSum : maxSum;
  }

  return (maxSum / k);
}

void main() {
  print('Max Sum: ${findMaxAverage([1, 12, -5, -6, 50, 3], 4)}');
}
