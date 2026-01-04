void main() {
  int n = 5;

  print("Recursive: ${climbRecursive(n)}");

  List<int> memo = List.filled(n + 1, -1);
  print("Memoization (DP): ${climbMemo(n, memo)}");

  print("Tabulation (DP): ${climbTabulation(n)}");

  print("Optimized O(1) Space: ${climbOptimized(n)}");
}

//////////////////////////////
// 1. Recursive Solution
//////////////////////////////
int climbRecursive(int n) {
  if (n == 1) return 1;
  if (n == 2) return 2;

  return climbRecursive(n - 1) + climbRecursive(n - 2);
}

//////////////////////////////
// 2. Memoization (Top-Down DP)
//////////////////////////////
int climbMemo(int n, List<int> memo) {
  if (n == 1) return 1;
  if (n == 2) return 2;

  if (memo[n] != -1) return memo[n];

  memo[n] = climbMemo(n - 1, memo) + climbMemo(n - 2, memo);
  return memo[n];
}

//////////////////////////////
// 3. Tabulation (Bottom-Up DP)
//////////////////////////////
int climbTabulation(int n) {
  if (n == 1) return 1;
  if (n == 2) return 2;

  List<int> dp = List.filled(n + 1, 0);
  dp[1] = 1;
  dp[2] = 2;

  for (int i = 3; i <= n; i++) {
    dp[i] = dp[i - 1] + dp[i - 2];
  }

  return dp[n];
}

//////////////////////////////
// 4. Most Optimized (O(1) Space)
//////////////////////////////
int climbOptimized(int n) {
  if (n == 1) return 1;
  if (n == 2) return 2;

  int prev2 = 1; // ways to reach step 1
  int prev1 = 2; // ways to reach step 2

  for (int i = 3; i <= n; i++) {
    int curr = prev1 + prev2;
    prev2 = prev1;
    prev1 = curr;
  }

  return prev1;
}
