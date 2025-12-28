void main() {
  String original = 'I am shahanaj';

  String result = reverseStringByRecursion(original);

  print('result : $result');
}

String reverseString(String original) {
  List<String> char = original.split('');

  int left = 0;
  int right = char.length - 1;

  while (left < right) {
    String temp = char[right];
    char[right] = char[left];
    char[left] = temp;
    left++;
    right--;
  }

  return char.join('');
}

String reverseStringByRecursion(String original) {
  List<String> char = original.split('');
  reverse(char, 0, char.length - 1);
  return char.join('');
}

void reverse(List<String> char, int left, int right) {
  if (left > right) return;

  String temp = char[right];
  char[right] = char[left];
  char[left] = temp;
  reverse(char, left + 1, right - 1);
}
