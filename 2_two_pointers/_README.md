# Two Pointer

## Overview
The Two Pointer pattern involves defining 2 variables like pointers and we move them (close to or away from) each other based on the question needs. It is often used to find *pairs or elements* that meet specific criteria.

### When to Use:
1. When dealing with sorted arrays, and need to find pairs that satisfy a condition.
2. Can be used to solve for Palindrome

## Two Pointer Approach
Used for problems like [LeetCode #167](https://leetcode.com/problems/)

### When to Use:
1. Array is already sorted
2. No extra space needed
3. Single pass through array

## Hash map
Used for problems like [LeetCode #](https://leetcode.com/problems/)

### When to Use:
1. Array is not sorted
2. You can afford extra space

## Hash map
Binary Search [LeetCode #](https://leetcode.com/problems/)

### When to Use:
1. You need to find a specific value
2. You are delaing with a very large array
3. You can't use extra space

## Common Problems Solved with Two Pointers

### 1. Two Sum (Sorted Array)
- **Problem**: Given a sorted array and a target sum, find two numbers that add up to the target.
- **Approach**:
  - Place one pointer at the start (left) and one at the end (right)
  - If sum of elements at pointers > target, move right pointer left
  - If sum < target, move left pointer right
  - If sum = target, we found our pair
- **Complexity**: O(n) time, O(1) space

### 2. Remove Duplicates from Sorted Array
- **Problem**: Remove duplicates from a sorted array in-place, returning the new length.
- **Approach**:
  - Use one pointer (slow) to track the position of unique elements
  - Use another pointer (fast) to scan through the array
  - When a new unique element is found, move it to the slow pointer's position
- **Complexity**: O(n) time, O(1) space

### 3. Container With Most Water
- **Problem**: Given an array of heights, find two lines that form a container holding the most water.
- **Approach**:
  - Start with pointers at both ends
  - Calculate area between current pointers
  - Move the pointer pointing to the shorter line inward
  - Keep track of maximum area found
- **Complexity**: O(n) time, O(1) space

### 4. Valid Palindrome
- **Problem**: Check if a string is a palindrome, ignoring non-alphanumeric characters.
- **Approach**:
  - One pointer starts from left, another from right
  - Skip non-alphanumeric characters
  - Compare characters at both pointers
  - Move pointers inward until they meet
- **Complexity**: O(n) time, O(1) space

### 5. Three Sum
- **Problem**: Find all unique triplets in an array that sum to zero.
- **Approach**:
  - Sort the array first
  - Fix one number and use two pointers for the remaining array
  - Similar to Two Sum but with an additional fixed element
- **Complexity**: O(n²) time, O(1) space

### 6. Merge Two Sorted Arrays
- **Problem**: Merge two sorted arrays into one sorted array.
- **Approach**:
  - Use three pointers: one for each input array and one for the result
  - Compare elements at both pointers and place the smaller one in result
  - Move the pointer of the array from which element was taken
- **Complexity**: O(m + n) time, O(1) space if done in-place

## Key Advantages of Two Pointer Pattern
- Often reduces time complexity from O(n²) to O(n)
- Usually requires constant space (O(1))
- Works well with sorted arrays
- Can be used for both array and string problems
- Particularly effective for problems involving pairs or elements that need to be compared