void main() {
  List<int> arr = [1, 3, -1, -3, 5, 3, 6, 7];
  int k = 3;
  List<int> result = slidingMaxArray(arr, k);

  print('result : $result');
}

List<int> slidingMaxArray(List<int> arr, int k) {
  List<int> res = [];
  List<int> dq = [];

  for (int i = 0; i < arr.length; i++) {
    if (dq.isNotEmpty && dq.first <= i - k) {
      dq.removeAt(0);
    }
    while (dq.isNotEmpty && arr[i] > dq.last) {
      dq.removeLast();
    }
    dq.add(i);
    if (i > k - 1) {
      res.add(arr[dq.first]);
    }
  }
  return res;
}
