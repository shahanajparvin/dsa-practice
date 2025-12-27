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
  Node? median = listExample.medianValue();
  print('-----median value ' + median!.value!.toString());
  print('-----median valued fcff ' + median!.next!.value.toString());
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

  Node? medianValue() {
    if (head == null) return null;

    Node? fast = head!;
    Node? slow = head!;

    while (fast!.next != null) {
      fast = fast.next!.next;
      slow = slow!.next;
    }

    return slow;
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
