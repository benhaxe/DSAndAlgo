/*
Problem:
You are given an integer array height of length n. There are n vertical lines drawn such that 
the two endpoints of the ith line are (i, 0) and (i, height[i]).

Find two lines that together with the x-axis form a container, such that the container contains the most water.

Return the maximum amount of water a container can store.

Example 1:
Input: height = [1,8,6,2,5,4,8,3,7]
Output: 49
Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. 
In this case, the max area of water (blue section) the container can contain is 49.

Example 2:
Input: height = [1,1]
Output: 1

Constraints:
- n == height.length
- 2 <= n <= 10^5
- 0 <= height[i] <= 10^4
*/

import 'dart:math';

// Time Complexity: O(n)
// Space Complexity: O(1
int maxArea(List<int> height) {
  int left = 0; //Starts at beginning of the array.
  int right = height.length - 1; //Starts at the end of the array.
  int maxArea = 0; //tracks maximum area found.

  while (left < right) {
    int currentArea = min(height[left], height[right]) * (right - left);
    maxArea = max(maxArea, currentArea);

    if (height[left] < height[right]) {
      left++;
    } else {
      right--;
    }
  }

  return maxArea;
}
