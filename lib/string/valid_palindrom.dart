void main() {
  String s = 'madam';

  bool result = isValidPalindrom(s);

  print('result : $result');
}

bool isValidPalindrom(String s) {
  List<String> chars = s.split('');
  int n = chars.length;
  int left = 0;
  int right = n - 1;

  while (left < right) {
    if (chars[left] != chars[right]) {
      return false;
    }
    left++;
    right--;
  }

  return true;
}
