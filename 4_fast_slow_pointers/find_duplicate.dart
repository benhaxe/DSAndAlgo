/*
  *LeetCode #287 [Find the duplicate Number]
*/
/*
*Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.
*There is only one repeated number in nums, return this repeated number.

*Test Cases:
  Input: nums = [1,3,4,2,2]
  Output: 2

  Input: nums = [3,1,3,4,2]
  Output: 3

  Input: nums = [1,1]
  Output: 1

  Input: nums = [1,1,2]
  Output: 1
*/

///We will use the two pointer approacha nd threat the first index as the head
///in this case like the LinkedList.
int findDuplicate(List<int> nums) {
  //Set bith slow and .
  int slow = nums[0];
  int fast = nums[0];

  //we need to keep mvoing slow 1 point & fast 2 points
  //Provided slow != fast "Cycle is not detected".
  do {
    slow = nums[slow];
    fast = nums[nums[fast]];
  } while (slow != fast);

  //To find the duplicate we need to find where the cycle starts and by that
  //We need to initialise slow back to teh head of the list
  //And move slow & fast at same speed now provided slow & fast haven't met.
  //
  //When they meet we return the value of slow.
  slow = nums[0];
  while (slow != fast) {
    slow = nums[slow];
    fast = nums[fast];
  }

  return slow;
}
