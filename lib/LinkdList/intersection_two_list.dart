void main() {
  // Create shared nodes
  Node shared1 = Node(6);
  Node shared2 = Node(7);
  shared1.next = shared2;

  // Create List A: 1 -> 2 -> 3 -> 6 -> 7
  Node headA = Node(1);
  headA.next = Node(2);
  headA.next!.next = Node(3);
  headA.next!.next!.next = shared1;

  // Create List B: 4 -> 5 -> 6 -> 7
  Node headB = Node(4);
  headB.next = Node(5);
  headB.next!.next = shared1; // intersection

  Node? intersection = getIntersectionNode(headA, headB);

  if (intersection != null) {
    print("Intersection at node with value: ${intersection.value}");
  } else {
    print("No intersection");
  }
}

// Node class
class Node {
  int value;
  Node? next;

  Node(this.value);
}

// Two-pointer approach
Node? getIntersectionNode(Node? headA, Node? headB) {
  if (headA == null || headB == null) return null;

  Node? pA = headA;
  Node? pB = headB;

  // Traverse both lists
  while (pA != pB) {
    // Move pointer forward or switch to other head
    pA = (pA != null) ? pA.next : headB;
    pB = (pB != null) ? pB.next : headA;
  }

  return pA; // Can be null if no intersection
}


/* Short Version (If interviewer wants quick answer)

“I use two pointers. Each pointer traverses both lists once by switching to the other list when it reaches null. This guarantees they meet at the intersection or both reach null.”

//If interviewer asks about complexity

“Time complexity is O(n + m) and space complexity is O(1).”

//If interviewer challenges “why not value compare?”

“Because intersection is about shared node reference, not node value.” */