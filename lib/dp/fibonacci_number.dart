void main() {
  int n = 6;

  print("Recursive: ${fibRecursive(n)}");

  List<int> memo = List.filled(n + 1, -1);
  print("Memoization (DP): ${fibMemo(n, memo)}");

  print("Tabulation (DP): ${fibTabulation(n)}");

  print("Optimized O(1) Space: ${fibOptimized(n)}");
}

//////////////////////////////
// 1. Recursive Solution
//////////////////////////////
int fibRecursive(int n) {
  if (n <= 1) return n;
  return fibRecursive(n - 1) + fibRecursive(n - 2);
}

//////////////////////////////
// 2. Memoization (Top-Down DP)
//////////////////////////////
int fibMemo(int n, List<int> memo) {
  if (n <= 1) return n;

  if (memo[n] != -1) return memo[n];

  memo[n] = fibMemo(n - 1, memo) + fibMemo(n - 2, memo);
  return memo[n];
}

//////////////////////////////
// 3. Tabulation (Bottom-Up DP)
//////////////////////////////
int fibTabulation(int n) {
  if (n <= 1) return n;

  List<int> dp = List.filled(n + 1, 0);
  dp[0] = 0;
  dp[1] = 1;

  for (int i = 2; i <= n; i++) {
    dp[i] = dp[i - 1] + dp[i - 2];
  }

  return dp[n];
}

//////////////////////////////
// 4. Most Optimized (O(1) Space)
//////////////////////////////
int fibOptimized(int n) {
  if (n <= 1) return n;

  int prev2 = 0;
  int prev1 = 1;

  for (int i = 2; i <= n; i++) {
    int curr = prev1 + prev2;
    prev2 = prev1;
    prev1 = curr;
  }

  return prev1;
}
