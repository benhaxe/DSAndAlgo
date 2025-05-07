/** 
 * You are in charge of the cake for a child's birthday. 
 * You have to find out how many candles are tallest.
*/
int birthdayCakeCandles(List<int> candles) {
  int maxHeight = candles.reduce((a, b) => a > b ? a : b);
  return candles.where((stick) => stick == maxHeight).length;
}
