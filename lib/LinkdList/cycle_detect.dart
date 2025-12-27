void main() {
  // Given input
  List<int> values = [3, 2, 0, -4];
  int pos = 1;

  // Step 1: create nodes
  List<Node> nodes = [];
  for (int v in values) {
    nodes.add(Node(v));
  }

  // Step 2: link nodes normally
  for (int i = 0; i < nodes.length - 1; i++) {
    nodes[i].next = nodes[i + 1];
  }

  // Step 3: create cycle if pos != -1
  if (pos != -1) {
    nodes.last.next = nodes[pos];
  }

  // Step 4: test
  bool result = hasCycle(nodes.first);
  print(result); // true
}

class Node {
  int value;
  Node? next;

  Node(this.value);
}

bool hasCycle(Node? head) {
  Node? slow = head;
  Node? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;

    if (slow == fast) {
      return true;
    }
  }

  return false;
}
