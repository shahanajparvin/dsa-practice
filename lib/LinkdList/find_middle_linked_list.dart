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
  listExample.addValue(70);
  Node? secondmedian = listExample.secondMedianValue();
  Node? firstmedian = listExample.firstMedianValue();
  print('-----secondmedianmedian value ' + secondmedian!.value!.toString());
  print('-----firstmedian value ' + firstmedian!.value!.toString());
  listExample.printNodes(secondmedian);
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

  Node? secondMedianValue() {
    if (head == null) return null;

    Node? fast = head!;
    Node? slow = head!;

    while (fast != null && fast.next != null) {
      fast = fast.next!.next;
      slow = slow!.next;
    }

    return slow;
  }

  Node? firstMedianValue() {
    if (head == null) return null;

    Node? fast = head!;
    Node? slow = head!;

    while (fast != null && fast.next != null && fast.next!.next != null) {
      fast = fast.next!.next;
      slow = slow!.next;
    }

    return slow;
  }

  void printNodes(Node head) {
    Node? current = head;

    while (current != null) {
      print(' node - ${current.value}');
      current = current.next;
    }
  }
}
