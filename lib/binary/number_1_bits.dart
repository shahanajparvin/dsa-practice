int hammingWeight(int n) {
  int count = 0;
  while (n != 0) {
    count += n & 1; // Add 1 if LSB is 1
    n = n >> 1; // Shift bits to right
  }
  return count;
}

void main() {
  print(hammingWeight(11)); // Output: 3
  print(hammingWeight(128)); // Output: 1
}
