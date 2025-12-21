void main() {
  List<int> arr = [1, 2, 2, 4, 4, 5, 5];

  int result = findUniqueElementfromArray(arr);

  print('result : $result');
}

int findUniqueElementfromArray(List<int> arr) {
  int n = arr.length;

  int result = arr[0];

  for (int i = 1; i < n; i++) {
    result = result ^ arr[i];
  }
  return result;
}
