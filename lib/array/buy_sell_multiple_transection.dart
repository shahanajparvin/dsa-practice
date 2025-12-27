void main() {
  List<int> arr = [100, 180, 260, 310, 40, 535, 695];

  int result = buySellMultiple(arr);

  print('result : $result');
}

int buySellMultiple(List<int> arr) {
  int totalProfit = 0;

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > arr[i - 1]) {
      totalProfit = totalProfit + (arr[i] - arr[i - 1]);
    }
  }
  return totalProfit;
}
