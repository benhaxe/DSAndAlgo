/**
 * Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers.
 * Then print the respective minimum and maximum values as a single line of two space-separated long integers.
 * * Algorithmic Pattern:
 *  This problem utilizes the Sorting and Accumulation pattern.
 *  */
void minMaxSum(List<int> array) {
  array.sort();
  int minSum = array.sublist(0, 4).reduce((a, b) => a + b);
  int maxSum = array.sublist(1).reduce((a, b) => a + b);

  print("$minSum $maxSum");
}
