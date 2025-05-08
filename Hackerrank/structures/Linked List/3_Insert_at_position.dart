import '../../../~list_node.dart';

/**
 * NOTE: when inserting at a position we need to find the node that come before it
 * so we can link the new node after it. (position-1)
 *  */
ListNode insertNodeAtPosition(ListNode? head, int data, int position) {
  ListNode newNode = ListNode(data);
  if (position == 0 || head == 0) {
    newNode.next = head;
    return newNode;
  }

  ListNode current = head!;
  //This land us at position (2-1) = 1.
  for (int i = 0; i < position - 1; i++) {
    if (current.next == null) break;
    current = current.next!;
    //We technically create a space for the new node
    //and, once that is done we want to go out of the loop.
  }

  //we want to point the New node to same pointer as the current node
  newNode.next = current.next;
  current.next = newNode;
  return head;
}
/**
 * * A -> B -> C
 * So, we are currently at A, the position before which we want to insert our new node.
 * We say the new node should take the same position as A
 * Then, after that is done, we now say our Current node “A” should now point to our new node X
* * A -> X -> B -> C
 *  */