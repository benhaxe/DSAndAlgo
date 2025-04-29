/* 
  * Prefix Sum involves preprocessing an array to create a new array 
  * where each element at index i represents the sum of the array from the start up to i.
  * This allows for efficient sum queries on subarrays.
 */

/*  
  * Basic prefix sum approach would be used for: [LettCode #303]
    1. Many range sum queries [i, j]
    2. The arrays is static (doesn't chnage)
    3. Youb know the indices you want to query
*/

/*  
  * The prefix sum approach using Hashmap are used for. [LeetCode #560]
    1. [PURPOSE] Finding Sub array that sums to a specific value
    2. [Query] How many sub arrays sub to K
    3. [Space Usage] Can be O(n) in worst case, but often less
*/
