class Node {
  int val;
  Node? next;
  Node(this.val);
}

void main() {
  Node n1 = Node(1);
  Node n2 = Node(3);
  Node n3 = Node(5);

  n1.next = n2;
  n2.next = n3;

  // List 2: 2 -> 4 -> 6
  Node m1 = Node(2);
  Node m2 = Node(4);
  Node m3 = Node(6);
  m1.next = m2;
  m2.next = m3;

  printNodes(m1);
  print('after revers');
  Node? revere = reverse(m1);
  printNodes(revere);
}

Node? reverse(Node? head) {
  Node? prev;
  Node? next;
  Node? current = head;

  while (current != null) {
    next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }
  head = prev;
  return head;
}

printNodes(Node? head) {
  Node? current = head;
  while (current != null) {
    print('Node - ${current.val} ');
    current = current.next;
  }
}
