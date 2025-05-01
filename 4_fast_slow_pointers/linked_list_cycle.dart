import '~list_node.dart';

/* 
  *Leetcode #141 [Linked List Cycle] Easy
*/

/*
  Given head, the head of a linked list, determine if the linked list has a cycle in it.
  There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer.

  *Test Cases:
    Input: head = [3,2,0,-4], pos = 1
    Output: true
    Explanation: There is a cycle in the linked list, where the tail connects to the 1st node (0-indexed).

    Input: head = [1,2], pos = 0
    Output: true
    Explanation: There is a cycle in the linked list, where the tail connects to the 0th node.

    Input: head = [1], pos = -1
    Output: false
    Explanation: There is no cycle in the linked list.
*/
//Has cycle [Tortoise & hare approach].
bool hasCycle(ListNode? head) {
  //We start both pointers at the head of the ListNode.
  ListNode? slow = head;
  ListNode? fast = head;

  //We want to continue as long as fast & the next node of fast is not null
  //To make sure we don't get a null pointer.
  while (fast != null && fast.next != null) {
    slow = slow?.next; //move one step
    fast = fast.next?.next; //move 2 steps

    //if both pointers meet at any point we have observed the cycle.
    if (fast == slow) return true;
  }

  return false;
}
