/* 
  *Leetcode #142 [Linked List Cycle 2] Medium
*/

/*
*Given the head of a linked list, return the node where the cycle begins. If there is no cycle, return null.

*Test Cases:
  Input: head = [3,2,0,-4], pos = 1
  Output: tail connects to node index 1
  Explanation: There is a cycle in the linked list, where tail connects to the second node.

  Input: head = [1,2], pos = 0
  Output: tail connects to node index 0
  Explanation: There is a cycle in the linked list, where tail connects to the first node.

  Input: head = [1], pos = -1
  Output: no cycle
  Explanation: There is no cycle in the linked list.
*/
import '../~list_node.dart';

///[Floyd's Cycle-Finding Agorithm]
ListNode? detectCycle(ListNode? head) {
  ListNode? slow = head;
  ListNode? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow?.next;
    fast = fast.next?.next;

    if (slow == fast) {
      //This mean there is a cycle in the list node
      //This is the same has LinkedList Cycle, but for this we need to continue.

      //Finding the second cycle.
      // 1.Rest slow to head
      // 2. keep fast at the meeting point
      // 3 Move both pointer at same speed now.
      slow = head;

      //Where slow & fast meet again is the meeting point now.
      while (slow != fast) {
        slow = slow?.next;
        fast = fast?.next;
      }
      return slow;
    }
  }

  return null;
}
