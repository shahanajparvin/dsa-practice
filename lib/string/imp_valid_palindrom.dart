void main() {
  String s = 'madam';

  bool result = isValidPalindrom(s);

  print('result : $result');
}

bool isValidPalindrom(String s) {
  int n = s.length;
  int left = 0;
  int right = n - 1;

  while (left < right) {
    while (left < right && !(isAlphaNumeric(s[left]))) {
      left++;
    }

    while (left < right && !(isAlphaNumeric(s[right]))) {
      right--;
    }

    if (s[left] != s[right]) {
      return false;
    }
    left++;
    right--;
  }

  return true;
}

bool isAlphaNumeric(String s) {
  int code = s.codeUnitAt(0);

  if (code >= 48 && code <= 57 ||
      code >= 65 && code <= 90 ||
      code >= 97 && code <= 122) {
    return true;
  }
  return false;
}
