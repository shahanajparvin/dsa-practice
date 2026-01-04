void main() {
  int amount = 5;

  List<int> coins = [2, 4, 10];

  int result = coinChange2(coins, amount);

  print('result : $result');
}

int coinChange2(List<int> coins, int amount) {
  List<int> dp = List.filled(amount + 1, 0);

  dp[0] = 1;

  for (int coin in coins) {
    for (int i = coin; i <= amount; i++) {
      dp[i] = dp[i] + dp[i - coin];
    }
  }

  return dp[amount];
}


/* Best Interview Answer (Clear & Correct)

“dp[i] represents the number of different combinations that can make amount i using the coins processed so far.”

Slightly Expanded Version (Safer)

“dp is a dynamic programming array where dp[i] stores how many unique combinations can form amount i.
It counts combinations, not the number of coins, and order does not matter.” */

/* “Time complexity is O(coins × amount) because for each coin we iterate through all amounts up to the target.
Space complexity is O(amount) since we only use a 1D dp array.
This is optimal for this problem.” */