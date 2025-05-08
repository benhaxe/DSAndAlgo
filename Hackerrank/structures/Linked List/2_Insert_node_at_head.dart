import '../../../~list_node.dart';

/**
 * This is easy
 * We create the new node
 * We set the next of teh new node to the pointer of the current head,
 * and we update head to point to the new node
 *  */
ListNode insertNodeAtHead(ListNode? head, int data) {
  ListNode newNode = ListNode(data);
  newNode.next = head;
  return newNode;
}
