import 'dart:math' as Math;

void main() {
  int amount = 6;

  List<int> coins = [1, 2, 6, 10];

  int result = minimumCoin(coins, amount);

  print('result : $result');
}

int minimumCoin(List<int> coins, int amount) {
  List<int> dp = List.filled(amount + 1, amount + 1); // infinity
  dp[0] = 0;

  for (int coin in coins) {
    for (int i = coin; i <= amount; i++) {
      dp[i] = Math.min(dp[i], (dp[i - coin]) + 1);
    }
  }

  return dp[amount] > amount ? -1 : dp[amount];
}
