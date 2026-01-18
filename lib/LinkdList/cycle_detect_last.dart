class Node {
  int value;
  Node? next;
  Node(this.value);
}

void main() {
  Node n1 = Node(3);
  Node n2 = Node(2);
  Node n3 = Node(0);
  Node n4 = Node(-4);

  n1.next = n2;
  n2.next = n3;
  n3.next = n4;
  n4.next = n2; // cycle here
  bool result = hasCycle(n1);
  print(result); // true
}

bool hasCycle(Node? head) {
  Node? slow = head;
  Node? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next!;
    if (slow == fast) {
      return true;
    }
  }

  return false;
}
