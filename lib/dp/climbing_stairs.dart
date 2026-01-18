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

int climbStairs(int n) {
  // If there are 0 or 1 steps,
  // there is exactly 1 way to climb (do nothing or one step)
  if (n <= 1) return 1;

  // dp[i] will store the number of ways to reach step i
  // We need size (n + 1) because we count from step 0 to step n
  List<int> dp = List.filled(n + 1, 0);

  // Base case:
  // 1 way to stay at step 0 (no movement)
  dp[0] = 1;

  // 1 way to reach step 1 (one single step)
  dp[1] = 1;

  // Calculate number of ways for each step from 2 to n
  for (int i = 2; i <= n; i++) {
    // To reach step i:
    // - come from step (i - 1) by taking 1 step
    // - come from step (i - 2) by taking 2 steps
    // Total ways = ways to (i - 1) + ways to (i - 2)
    dp[i] = dp[i - 1] + dp[i - 2];
  }

  // dp[n] contains the total number of ways to reach the top
  return dp[n];
}
