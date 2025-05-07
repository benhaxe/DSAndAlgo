/**
 * Alice and Bob each have three scores. Compare each corresponding score, 
 * awarding a point to the person with the higher score. 
 * No points are awarded for ties. Return the total points for Alice and Bob as a list.
 */
///This is just basic iteration and element comparison.
List<int> compareTriplet(List<int> a, List<int> b) {
  int aliceScore = 0;
  int bobScore = 0;

  for (int i = 0; i < a.length; i++) {
    if (a[i] < b[i]) bobScore++;
    if (a[i] > b[i]) aliceScore++;
  }
  return [aliceScore, bobScore];
}
