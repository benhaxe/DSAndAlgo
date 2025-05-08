import '../../../~list_node.dart';

///Traverse each element and push the node into a stack
///Once done pop all element from teh stack and print it.

///[printReverse] uses stack based trasversal.
void printReverse(ListNode? head) {
  final stack = <int>[];
  ListNode? current = head;

  while (current != null) {
    stack.add(current.data);
    current = current.next;
  }

  //Since we are reversing.
  for (var i = stack.length - 1; i >= 0; i--) {
    print(stack[i]);
  }
}
