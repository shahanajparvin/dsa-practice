void main() {
  int value = -6;

  int divided = -2;

  int result = divideTwoInteger(value, divided);

  print('result : $result');
}

int divideTwoInteger(int value, int divided) {
  if (divided == 0) {
    throw Exception("Division by zero");
  }

  bool negative = (value < 0) ^ (divided < 0);
  int a = value.abs();
  int b = divided.abs();
  int i = 0;
  while (a >= b) {
    a = a - b;
    i++;
  }
  return negative ? -i : i;
}

int divideTwoIntegerBitShift(int dividend, int divisor) {
  // Handle overflow
  if (dividend == -2147483648 && divisor == -1) {
    return 2147483647;
  }

  // Determine sign
  bool negative = (dividend < 0) ^ (divisor < 0);

  // Use absolute values
  int a = dividend.abs();
  int b = divisor.abs();
  int quotient = 0;

  while (a >= b) {
    int temp = b;
    int multiple = 1;

    // Double temp until it exceeds a
    while ((temp << 1) <= a) {
      temp <<= 1;
      multiple <<= 1;
    }

    a -= temp;
    quotient += multiple;
  }

  return negative ? -quotient : quotient;
}
