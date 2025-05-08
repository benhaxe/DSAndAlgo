import '../../../~list_node.dart';

/**
 * NOTE: when inserting at a position we need to find the node that come before it
 * so we can link the new node after it. (position-1)
 *  */
ListNode? deleteNodeAtPosition(ListNode? head, int position) {
  if (head == null) return null;
  if (position == 0) return head.next;

  ListNode current = head;
  //This land us at position (2-1) = 1.
  for (int i = 0; i < position - 1; i++) {
    //If we do not find any node at the position givien we will return the LinkedList.
    if (current.next == null) return head;
    current = current.next!;
    //We technically create a space for the new node
    //and, once that is done we want to go out of the loop.
  }
  //This is where we remove the node
  //We check if the node at the position is not empty
  //We then skip it to the one after it.
  if (current.next != null) {
    current.next = current.next!.next;

    //You are standing at box A.
    //"A → B → C"
    //Now from A skip B and point to C.
  }

  return head;
}
