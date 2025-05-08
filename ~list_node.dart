class ListNode {
  late int data;
  ListNode? next;
  ListNode(this.data, [this.next]);

  @override
  String toString() {
    String result = '$data';
    ListNode? current = next;
    while (current != null) {
      result += ' -> ${current.data}';
      current = current.next;
    }
    result += ' -> null';
    return result;
  }
}
