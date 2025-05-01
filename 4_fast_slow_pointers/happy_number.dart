/*
*
LeetCode #202 [Happy Number] */

/*
*Write an algorithm to determine if a number n is happy.
*A happy number is a number defined by the following process:
*- Starting with any positive integer, replace the number by the sum of the squares of its digits.
*- Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
*- Those numbers for which this process ends in 1 are happy.

*Test Cases:
  Input: n = 19
  Output: true
  Explanation:
    1² + 9² = 82
    8² + 2² = 68
    6² + 8² = 100
    1² + 0² + 0² = 1

  Input: n = 2
  Output: false
  Explanation:
    2² = 4
    4² = 16
    1² + 6² = 37
    3² + 7² = 58
    5² + 8² = 89
    8² + 9² = 145
    1² + 4² + 5² = 42
    4² + 2² = 20
    2² + 0² = 4 (cycle detected)
*/
bool isHappy(int n) {
  int slow = n;
  int fast = getNext(n);

  //If fast is not equal to 1 we haven't reached happy number condition
  //and slow is not equal to fast we haven't detected a cycle.
  while (fast != 1 && slow != fast) {
    slow = getNext(slow);
    fast = getNext(getNext(fast));
  }

  return fast == 1;
}

int getNext(int n) {
  //More liken calculating the sum of the square of the individual digit "n"
  //Provided sum is greater than 0.
  int sum = 0;
  while (n > 0) {
    int digit = n % 10;
    sum += digit * digit;
    n ~/= 10;
  }
  return sum;
}
