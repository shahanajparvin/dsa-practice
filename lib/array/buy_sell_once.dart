import 'dart:math' as Math;

void main() {
  List<int> arr = [1, 3, 6, 9, 11];

  int result = buySellOnce(arr);

  print('result : $result');
}

int buySellOnce(List<int> arr) {
  int minPrice = arr[0];
  int maxProfit = 0;

  for (int i = 1; i < arr.length; i++) {
    minPrice = Math.min(arr[i], minPrice);
    maxProfit = Math.max(maxProfit, arr[i] - minPrice);
  }
  return maxProfit;
}
