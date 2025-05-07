//Matrix trasversal.
///We have the arrays becuase we want to trasverse diagonally bith left & right.
int diagonalDifference(List<List<int>> arr) {
  int leftToRight = 0;
  int rightToLeft = 0;

  for (int i = 0; i < arr.length; i++) {
    leftToRight += arr[i][i];
    rightToLeft += arr[i][arr.length - i - 1];
  }
  return (leftToRight - rightToLeft).abs();
}
