//LeetCode #53
// * Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
// * INPUT: [-2,1,-3,4,-1,2,1,-5,4]
// * Output: 6
// * Explanation: [4,-1,2,1] has the largest sum = 6

int maxSubarray(List<int> nums) {
  if (nums.isEmpty) return 0;
  int maxSum = nums[0];
  int currentSum = nums[0];

  for (int i = 1; i < nums.length; i++) {
    currentSum = (nums[i] > currentSum + nums[i]) ? currentSum : nums[i];
    maxSum = (currentSum > maxSum) ? currentSum : maxSum;
  }

  return maxSum;
}

class SubarrayResult {
  final int sum;
  final int start;
  final int end;
  final List<int> subarray; // Add this field

  SubarrayResult(this.sum, this.start, this.end, this.subarray);
}

SubarrayResult maxSubarrayWithIndices(List<int> nums) {
  if (nums.isEmpty) return SubarrayResult(0, 0, 0, []);

  int maxSum = nums[0];
  int currentSum = nums[0];
  int start = 0;
  int end = 0;
  int tempStart = 0;

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] > currentSum + nums[i]) {
      currentSum = nums[i];
      tempStart = i;
    } else {
      currentSum = currentSum + nums[i];
    }

    if (currentSum > maxSum) {
      maxSum = currentSum;
      start = tempStart;
      end = i;
    }
  }

  // Get the actual subarray using the indices
  List<int> maxSubarray = nums.sublist(start, end + 1);
  return SubarrayResult(maxSum, start, end, maxSubarray);
}
