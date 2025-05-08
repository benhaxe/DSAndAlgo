/* 
  *Leetcode #876 [Middle Linked List] Easy
*/

/*
  *Given the head of a singly linked list, return the middle node of the linked list.
  *If there are two middle nodes, return the second middle node.

*Test Cases:
  Input: head = [1,2,3,4,5]
  Output: [3,4,5]
  Explanation: The middle node of the list is node 3.

  Input: head = [1,2,3,4,5,6]
  Output: [4,5,6]
  Explanation: Since the list has two middle nodes with values 3 and 4, we return the second one.
*/

//Middle Linked List.
import '../~list_node.dart';

ListNode middleLinkedList(ListNode? head) {
  ListNode? slow = head;
  ListNode? fast = head;

  //Here since fast will always get to the end of the ListNode before slow
  //When fast is at the end we expect slow to already be in the middle of the node.
  while (fast != null && fast.next != null) {
    slow = slow?.next;
    fast = fast.next?.next;
  }
  return slow!;
}
