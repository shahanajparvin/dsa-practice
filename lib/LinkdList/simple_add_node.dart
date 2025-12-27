import 'package:path/path.dart';

void main() {
  LinkdListExample listExample = LinkdListExample();
  /*  
   */
  listExample.addValue(10);
  listExample.addValue(20);
  listExample.addValue(30);
  listExample.addValue(50);
  listExample.addValue(60);
  listExample.deleteNodeNthPositionByEnd(1);
  listExample.printNodes();
}

class Node {
  int value;
  Node? next;

  Node(this.value);
}

class LinkdListExample {
  Node? head;

  void addValue(int value) {
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

  void deleteNode(int value) {
    if (head == null) return;
    Node current = head!;
    while (current.next != null && current.next!.value != value) {
      current = current.next!;
    }
    if (current.next != null) {
      current.next = current.next!.next;
    }
  }

  void deleteNodeByPosition(int position) {
    if (head == null) return;
    if (position == 1) {
      head = head!.next;
      return;
    }
    Node current = head!;
    int positionCount = 1;
    while (current.next != null && positionCount < position - 1) {
      current = current.next!;
      positionCount++;
    }
    if (current.next != null) {
      current.next = current.next!.next;
    }
  }

  void addNodeByPosition(int value, int position) {
    Node newNode = Node(value);

    if (head == null) {
      head = newNode;
      return;
    }
    if (position == 1) {
      newNode.next = head!.next;
      head = newNode;
      return;
    }
    Node? current = head!;
    int positionCount = 1;
    while (current != null && positionCount < position - 1) {
      current = current.next!;
      positionCount++;
    }
    if (current != null) {
      newNode.next = current.next;
      current.next = newNode;
    }
  }

  void deleteNodeNthPositionByEnd(int n) {
    Node dummyNode = Node(0);
    dummyNode.next = head;

    Node? fast = dummyNode;
    Node? slow = dummyNode;

    for (int i = 0; i < n; i++) {
      fast = fast!.next;
    }

    while (fast!.next != null) {
      fast = fast.next;
      slow = slow!.next;
    }

    slow!.next = slow.next!.next;
  }

  void printNodes() {
    if (head == null) {
      return;
    }
    Node? current = head!;

    while (current != null) {
      print(' node - ${current.value}');
      current = current.next;
    }
  }
}
