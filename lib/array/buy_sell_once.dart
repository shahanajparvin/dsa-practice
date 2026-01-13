import 'dart:math' as Math;

void main() {
  List<int> arr = [5, 1, 6, 9, 11];

  int result = buySellOnceRightTraverse(arr);

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

int buySellOnceLast(List<int> arr) {
  int n = arr.length;

  if (arr.length < 2) return 0;

  int minPrice = arr[0];
  int maxProfit = 0;

  int start = 0;
  int end = 0;

  for (int i = 1; i < n; i++) {
    if (minPrice > arr[i]) {
      minPrice = arr[i];
      start = i;
    }

    if (arr[i] - minPrice > maxProfit) {
      maxProfit = arr[i] - minPrice;
      end = i;
    }
  }

  print('buying price ${arr[start]} Selling Price${arr[end]}');

  return maxProfit;
}

int buySellOnceRightTraverse(List<int> arr) {
  int n = arr.length;

  if (arr.length < 2) return 0;

  int maxSellPrice = arr[n - 1];
  int maxProfit = 0;

  int start = 0;
  int end = 0;

  for (int i = n - 2; i >= 0; i--) {
    if (maxSellPrice < arr[i]) {
      maxSellPrice = arr[i];
      end = i;
    }

    if (maxSellPrice - arr[i] > maxProfit) {
      maxProfit = maxSellPrice - arr[i];
      start = i;
    }
  }

  print('buying price ${arr[start]} Selling Price${arr[end]}');

  return maxProfit;
}
