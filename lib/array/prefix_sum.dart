void main() {
  List<int> arr = [2, 4, 6, 8];

  //expected output : [2, 6, 12, 20]

  List<int> result = prefixSumSameArray(arr);

  print('result : $result');
}

List<int> prefixSum(List<int> arr) {
  int n = arr.length;
  List<int> newArray = List.filled(n, 0);
  newArray[0] = arr[0];
  for (int i = 1; i < n; i++) {
    newArray[i] = newArray[i - 1] + arr[i];
  }
  return newArray;
}

List<int> prefixSumSameArray(List<int> arr) {
  int n = arr.length;
  for (int i = 1; i < n; i++) {
    arr[i] = arr[i - 1] + arr[i];
  }
  return arr;
}
