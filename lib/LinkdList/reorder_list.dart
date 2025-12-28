void main() {
  // Create linked list: 1 → 2 → 3 → 4 → 5
  Node head = Node(1);
  head.next = Node(2);
  head.next!.next = Node(3);
  head.next!.next!.next = Node(4);
  head.next!.next!.next!.next = Node(5);

  print("Original List:");
  printList(head);

  reorderList(head);

  print("Reordered List:");
  printList(head);
}

// Node class
class Node {
  int value;
  Node? next;

  Node(this.value);
}

// Print linked list
void printList(Node? head) {
  Node? current = head;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
}

// Reorder list function
void reorderList(Node? head) {
  if (head == null || head.next == null) return;

  // Step 1: Find the middle of the list
  Node? slow = head;
  Node? fast = head;

  while (fast != null && fast.next != null && fast.next!.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  // Step 2: Reverse the second half
  Node? second = slow!.next;
  slow.next = null; // break the list into two halves
  Node? prev;
  while (second != null) {
    Node? tmp = second.next;
    second.next = prev;
    prev = second;
    second = tmp;
  }

  // Step 3: Merge two halves
  Node? first = head;
  second = prev;

  while (second != null) {
    Node? temp1 = first!.next;
    Node? temp2 = second.next;

    first.next = second;
    second.next = temp1;

    first = temp1;
    second = temp2;
  }
}


/* Key Insight (Interview Perspective)

The problem can be solved in three main steps:

1. Find the middle node using slow & fast pointers.

2. Reverse the second half of the list.

3. Merge the first half and the reversed second half alternately. */