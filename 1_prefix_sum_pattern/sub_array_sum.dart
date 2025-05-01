//LC-560
// * Given an array of integers and an integer k, find the total number of continuous subarrays whose sum equals to k.
// * INPUT: [1, 1, 1] | [1,-1,0]
// * Output: 2 | 3
// * Explanation: The subarrays[1,1] [1,1] | [1,-1] [0] [1,-1,0]

//The above is counting sub-array method, "Count the number of sub arrays with sum equal target".
int subArraySumEqualsK(List<int> nums, int k) {
  int count = 0;
  int sum = 0;

  Map<int, int> prefixSumCount = {
    0: 1,
  }; //initialize with sum zero occuring once.

  //if (sum-k) exist in our hash map that means there's a subarray that sums to k
  //So based on this we also have to increament the count.
  for (int num in nums) {
    sum += num;
    if (prefixSumCount.containsKey((sum - k))) {
      count += prefixSumCount[sum - k]!;
    }
    // update the count if current sum in our map.
    prefixSumCount[sum] = (prefixSumCount[sum] ?? 0) + 1;
  }

  return count;
}
