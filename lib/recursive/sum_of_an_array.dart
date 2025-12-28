void main() {
  List<int> arr = [2, 4, 6, 1];

  int result = recursiveSum(arr);

  print('result : $result');
}

int sumOfArray(List<int> arr) {
  int n = arr.length;
  int result = 0;
  for (int i = 0; i < n; i++) {
    result = result + arr[i];
  }
  return result;
}

int recursive(List<int> arr, int position) {
  int n = arr.length;
  if (position == n - 1) {
    return arr[position];
  }
  return arr[position] + recursive(arr, position + 1);
}

int recursiveSum(List<int> arr) {
  return recursive(arr, 0);
}
