import '../4_fast_slow_pointers/~list_node.dart';

/** 
 * Reversing Linked list can be done in 2 ways
 * 1. Iteratively "with just pointers" (Most optimal solution)
 * 2. Recursively "Best way to solve this is break it down into a sub problem"
*/
ListNode? reverseList(ListNode? head) {
  if (head == null) return null;

  ListNode? previous = null;
  ListNode? current = head;
  ListNode? nextTemp; //To store the original next node.

  while (current != null) {
    nextTemp = current.next;
    current.next = previous;
    previous = current;
    current = nextTemp;
  }
  return previous;
}

void main() {
  ListNode node4 = ListNode(4);
  ListNode node3 = ListNode(3, node4); // Node 3 points to Node 4
  ListNode node2 = ListNode(2, node3); // Node 2 points to Node 3
  ListNode head = ListNode(1, node2); // Node 1 (head) points to Node 2

  print('Original List: $head');

  ListNode? reverseLinkeList = reverseList(head);

  print('Original List: $reverseLinkeList');
}
