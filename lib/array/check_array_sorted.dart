void main() {
  List<int> arr = [1, 2, 3, 4];
  bool result = isArraySorted(arr);

  print('is array sorted $result');
}

bool isArraySorted(List<int> arr) {
  int n = arr.length;

  if (n == 0) return false;

  for (int i = 0; i < n - 1; i++) {
    if (arr[i + 1] < arr[i]) {
      return false;
    }
  }
  return true;
}
