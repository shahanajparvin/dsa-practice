List<int> countBits(int n) {
  List<int> dp = List.filled(n + 1, 0);
  for (int i = 1; i <= n; i++) {
    dp[i] = dp[i & (i - 1)] + 1; // remove last 1 bit
  }
  return dp;
}

void main() {
  print(countBits(5)); // Output: [0,1,1,2,1,2]
}
