class ListNode {
  late int val;
  ListNode? next;
  ListNode(this.val, [this.next]);

  @override
  String toString() {
    String result = '$val';
    ListNode? current = next;
    while (current != null) {
      result += ' -> ${current.val}';
      current = current.next;
    }
    result += ' -> null';
    return result;
  }
}
