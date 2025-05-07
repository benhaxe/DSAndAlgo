/**
 * Given a list of ice cream prices and a total amount of money,
 * find two distinct prices that sum up to the total amount. 
 * 
 * Return the 1-based indices of these two prices."This is very important to note"
 *  */

///[twoSumWithHashMap] is the approachto use
///We traverse through the list store each element in the key of the hashmap.
///We check the hashmap at each iteration and if we have seen a key before in the hash map(complement)
///We have found the value.

List<int> twoSumWithHashMap(List<int> iceCreamPrices, int totalMoney) {
  Map<int, int> priceMap = {};

  for (int i = 0; i < iceCreamPrices.length; i++) {
    //We use this check for the number needed to get to the target
    //i.e iceCreamPrices[i] = 3 & target is 8 then we need 5 to reach target.
    int complement = totalMoney - iceCreamPrices[i];

    //Then we check have I seen 5 before.
    if (priceMap.containsKey(complement)) {
      //return both indices one where 5 occured and i
      //Note we add one becuase questions states that return 1-based indices.
      return [priceMap[complement]! + 1, i + 1];
    }
    //If no store i in map for future loop.
    priceMap[iceCreamPrices[i]] = i;
  }
  return [];
}
