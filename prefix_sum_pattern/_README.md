# Prefix Sum Pattern

## Overview
Prefix Sum involves preprocessing an array to create a new array where each element at index i represents the sum of the array from the start up to i. This allows for efficient sum queries on subarrays.

## Basic Prefix Sum Approach
Used for problems like [LeetCode #303](https://leetcode.com/problems/range-sum-query-immutable/)

### When to Use:
1. Many range sum queries [i, j]
2. The array is static (doesn't change)
3. You know the indices you want to query

### Example:
```dart
// Preprocessing
List<int> prefix = [1, 3, 6, 10, 15, 21]  // For array [1,2,3,4,5,6]

// Query: Sum from index 1 to 3
int sum = prefix[3] - prefix[0] = 10 - 1 = 9
```

## Prefix Sum with Hash Map
Used for problems like [LeetCode #560](https://leetcode.com/problems/subarray-sum-equals-k/)

### When to Use:
1. Finding subarrays that sum to a specific value
2. Counting how many subarrays sum to k
3. When space efficiency is important (can be O(n) in worst case, but often less)

### Example:
```dart
// Finding subarrays that sum to k
int subarraySumEqualsK(List<int> nums, int k) {
  int count = 0;
  int sum = 0;
  Map<int, int> prefixSumCount = {0: 1};
  
  for (int num in nums) {
    sum += num;
    if (prefixSumCount.containsKey(sum - k)) {
      count += prefixSumCount[sum - k]!;
    }
    prefixSumCount[sum] = (prefixSumCount[sum] ?? 0) + 1;
  }
  
  return count;
}
```

## Key Differences
| Feature | Basic Prefix Sum | Prefix Sum with Hash Map |
|---------|-----------------|-------------------------|
| Purpose | Range sum queries | Find subarrays with specific sum |
| Query Type | Sum between indices i and j | Count subarrays summing to k |
| Space Usage | O(n) | O(n) worst case |
| Best For | Static arrays, known indices | Dynamic subarray finding |