void main() {
  LinkedList list = LinkedList();

  // Add nodes
  list.add(10);
  list.add(20);
  list.add(30);
  list.add(40);

  print("Original List:");
  list.printList();

  // Reverse the list
  list.reverseLinkdListMy();

  print("Reversed List:");
  list.printList();
}

// Node class
class Node {
  int value;
  Node? next;

  Node(this.value);
}

// Linked List class
class LinkedList {
  Node? head;

  // Add node at the end
  void add(int value) {
    Node newNode = Node(value);

    if (head == null) {
      head = newNode;
      return;
    }

    Node current = head!;
    while (current.next != null) {
      current = current.next!;
    }
    current.next = newNode;
  }

  // Print all nodes
  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }

  // Reverse the linked list
  void reverse() {
    Node? prev = null;
    Node? current = head;
    Node? next;

    while (current != null) {
      next = current.next; // Step 1: Save next node
      current.next = prev; // Step 2: Reverse pointer
      prev = current; // Step 3: Move prev forward
      current = next; // Step 4: Move current forward
    }

    head = prev; // Update head to new first node
  }

  void reverseLinkdListMy() {
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
  }
}
// I can not understand the logic how it is working

Node? reverseRecursive(Node? head) {
  // Base case
  if (head == null || head.next == null) {
    return head;
  }

  Node? newHead = reverseRecursive(head.next);

  head.next!.next = head; // reverse link
  head.next = null; // break old link

  return newHead;
}
