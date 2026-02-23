/*Given the head of a singly linked list, reverse the list, and return the reversed list. */
class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

ListNode? reverseList(ListNode? head) {
  ListNode? prev = null;

  while (head != null) {
    ListNode? next = head.next;
    head.next = prev;
    prev = head;
    head = next;
  }
  return prev;
}

void printList(ListNode? head) {
  while (head != null) {
    print(head.val);
    head = head.next;
  }
}

void main() {
  ListNode head = ListNode(1);
  head.next = ListNode(2);
  head.next!.next = ListNode(3);
  head.next!.next!.next = ListNode(4);
  head.next!.next!.next!.next = ListNode(5);
  print("Before Reverse:");
  printList(head);
  ListNode? reversed = reverseList(head);
  print("After Reverse:");
  printList(reversed);
}
