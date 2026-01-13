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
    // step 5: remove indices out of the current window
    if (dq.isNotEmpty && dq.first <= i - k) {
      dq.removeAt(0);
    }
    // step 6: remove indices whose values are smaller than current
    while (dq.isNotEmpty && arr[i] > dq.last) {
      dq.removeLast();
    }
    // step 4 continued: add current index
    dq.add(i);
    print('index $i  $dq');
    // optional: add max to result if window is full
    if (i > k - 1) {
      res.add(arr[dq.first]);
    }
    print('index $i  result $res');
  }
  return res;
}
