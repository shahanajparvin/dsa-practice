void main() {
  int b = 1111;
  int result = binaryToDecimal(b);

  String s = '1111';
  int result1 = stringBinaryToDecimal(s);

  print('result : $result1 $result');
}

int binaryToDecimal(int binary) {
  int sum = 0;
  int i = 0;
  while (binary > 0) {
    int digit = binary % 10;
    sum = sum + (digit * (1 << i));
    binary = binary ~/ 10;
    i++;
  }
  return sum;
}

int stringBinaryToDecimal(String binary) {
  int sum = 0;
  int n = binary.length;
  for (int i = n - 1; i >= 0; i--) {
    int digit = binary.codeUnitAt(i) - 48;
    print('digit $digit');
    sum = sum + (digit * (1 << n - 1 - i));
  }

  return sum;
}
