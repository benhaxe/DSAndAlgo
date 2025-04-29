// * Challenge 1 [Given an array nums, answer multiple queries about the sum of elements within a specific range [i, j].].
// * (Input: nums = [1, 2, 3, 4, 5, 6], i = 1, j = 3 | Output: 9)
//Step 1
List<int> createPrefixSum(List<int> inputArray) {
  List<int> prefix = List.filled(inputArray.length, 0);
  //The first element in input array == the first element on the prefix array.
  prefix[0] = inputArray[0];
  //The first element in input array == the first element on the prefix array.
  for (int i = 1; i < inputArray.length; i++) {
    //prefix[i-1]is the cumulative of sum of all elements before the current Index.
    prefix[i] = prefix[i - 1] + inputArray[i];
    /* 
      i = 1: prefix[1] = prefix[0] + inputArray[1] = 1 + 2 = 3
      i = 2: prefix[2] = prefix[1] + inputArray[2] = 3 + 3 = 6
      i = 3: prefix[3] = prefix[2] + inputArray[3] = 6 + 4 = 10
    */
  }

  return prefix;
}

//Step 2.
int rangeSum(List<int> prefix, int i, int j) {
  if (i == 0) return prefix[j];
  return prefix[j] - prefix[i - 1];
}

void main() {
  final nums = [1, 2, 3, 4, 5, 6];
  final i = 1;
  final j = 3;

  final sum = rangeSum(createPrefixSum(nums), i, j);

  print(sum);
}
