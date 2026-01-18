void main() {
  int haystack = 12215;

  bool result = isPalindromNumber(haystack);

  int result1 = reverseNumber(haystack);

  print('result : $result');

  print('result1 : $result1');
}

bool isPalindromNumber(int x) {
  if (x < 0 || x % 10 == 0 && x != 0) {
    return false;
  }
  int reversedNumber = 0;
  while (x > reversedNumber) {
    reversedNumber = reversedNumber * 10 + x % 10;
    x = x ~/ 10;
  }

  return x == reversedNumber || x == reversedNumber ~/ 10;
}

int reverseNumber(int x) {
  int signed = 1;

  if (x < 0) {
    signed = -1;
  }

  int intmaxNumber = (1 << 31) - 1;

  print('intmaxNumber $intmaxNumber');

  x = x.abs();
  int reversedNumber = 0;
  while (x != 0) {
    int digit = x % 10;
    if (reversedNumber > intmaxNumber ~/ 10 ||
        (reversedNumber == intmaxNumber ~/ 10) && digit > 7) {
      return 0;
    }
    reversedNumber = reversedNumber * 10 + digit;
    x = x ~/ 10;
  }

  return reversedNumber * (signed);
}
