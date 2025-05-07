/**
 * Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero.
 * Print the decimal value of each fraction on a new line. With 6 places after the decimal
 * Algorithmic Pattern: The problem uses counting & ratios
 *  */

void plusMinus(List<int> array) {
  int n = array.length;
  int positive = 0;
  int negative = 0;
  int zero = 0;

  for (int num in array) {
    if (num > 0)
      positive++;
    else if (num < 0)
      negative++;
    else
      zero++;
  }
  print((positive / n).toStringAsFixed(6));
  print((negative / n).toStringAsFixed(6));
  print((zero / n).toStringAsFixed(6));
}
