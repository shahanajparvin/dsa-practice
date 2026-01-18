class Node {
  int value;
  Node? next;

  Node(this.value);
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

  Node? mergeList = mergeTwoList(n1, m1);
  printNodes(mergeList);
}

Node? mergeTwoList(Node? l1, Node? l2) {
  Node dummy = Node(0);
  Node current = dummy;

  while (l1 != null && l2 != null) {
    if (l1.value <= l2.value) {
      current.next = l1;
      l1 = l1.next;
    } else {
      current.next = l2;
      l2 = l2.next;
    }
    current = current.next!;
  }

  current.next = l1 ?? l2;

  return dummy.next;
}

printNodes(Node? head) {
  Node? current = head;
  while (current != null) {
    print('Node - ${current.value} ');
    current = current.next;
  }
}
