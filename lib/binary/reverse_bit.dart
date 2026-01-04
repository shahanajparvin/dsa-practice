int reverseBits(int n) {
  int result = 0;
  for (int i = 0; i < 32; i++) {
    int bit = n & 1; // get the last bit
    result = (result << 1) | bit; // shift result left and add bit
    n = n >> 1; // shift n right
  }
  return result;
}

void main() {
  print(reverseBits(13)); // Output: 2952790016 (for 32-bit)
}
