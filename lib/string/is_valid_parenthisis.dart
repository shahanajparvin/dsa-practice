void main() {
  String haystack = "[{}]]";

  bool result = isValidParenthis(haystack);

  print('result : $result');
}

bool isValidParenthis(String str) {
  int n = str.length;

  Map<String, String> pair = {']': '[', ')': '(', '}': '{'};

  List<String> stack = [];

  for (int i = 0; i < n; i++) {
    String ch = str[i];

    if (pair.containsValue(ch)) {
      stack.add(ch);
    } else if (stack.isEmpty || stack.removeLast() != pair[ch]) {
      return false;
    }
  }

  return stack.isEmpty;
}
