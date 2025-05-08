import '../../../~list_node.dart';

/**
 * Provided head is not null we trasverse the node
 * Also provided the next node "current.next" is not null we keep trasversind the node until we reach null
 * Once it's null our next node will be the newNode coming in.
 * And then we return head which is going to be the full List node.
 *  */
ListNode insertNodeAtTail(ListNode? head, int data) {
  final newNode = ListNode(data);

  if (head == null) {
    return newNode;
  }

  ListNode current = head;
  //We keep trsversing.
  while (current.next != null) {
    current = current.next!;
  }
  current.next = newNode;
  return head;
}
