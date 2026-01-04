void main() {
  print(decimalToBinaryInt(13)); // Output: 1101
  print(decimalToBinaryInt(5)); // Output: 101
}

int decimalToBinaryInt(int decimal) {
  int binary = 0;
  int place = 1; // for digit position (1, 10, 100, ...)

  while (decimal > 0) {
    int remainder = decimal % 2;
    binary += remainder * place;
    decimal = decimal ~/ 2;
    place *= 10; // move to next digit
  }

  return binary;
}
