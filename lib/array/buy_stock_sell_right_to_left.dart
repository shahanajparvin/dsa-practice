import 'dart:math' as Math;

void main() {
  List<int> arr = [7, 10, 1, 3, 6, 9, 2];

  int result = futureMaxProfitLeftTraverse(arr);

  print('result : $result');
}

int futureMaxProfitRightTraverse(List<int> arr) {
  int n = arr.length;

  int maxSellPrice = arr[n - 1];
  int futureMaxProft = 0;

  for (int i = n - 2; i >= 0; i--) {
    if (arr[i] < maxSellPrice) {
      futureMaxProft = Math.max(futureMaxProft, maxSellPrice - arr[i]);
    }

    maxSellPrice = Math.max(maxSellPrice, arr[i]);
  }
  return futureMaxProft;
}

int futureMaxProfitLeftTraverse(List<int> arr) {
  int n = arr.length;

  int minSellprice = arr[0];
  int futureMaxProft = 0;

  for (int i = 1; i < n; i++) {
    if (arr[i] > minSellprice) {
      futureMaxProft = Math.max(futureMaxProft, arr[i] - minSellprice);
    }

    minSellprice = Math.min(minSellprice, arr[i]);
  }
  return futureMaxProft;
}
