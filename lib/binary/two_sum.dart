int getSum(int a, int b) {
  while (b != 0) {
    int carry = a & b; // calculate carry
    a = a ^ b; // sum without carry
    b = carry << 1; // move carry to next bit
  }
  return a;
}

void main() {
  print(getSum(5, 3)); // Output: 8
  print(getSum(-2, 3)); // Output: 1
}
