void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8];

  List<int> result = reverseString(arr);

  print('result : $result');
}

void recursive(List<int> arr, int i) {
  int n = arr.length;
  if (i > n / 2) {
    return;
  }
  int temp = arr[n - i - 1];
  arr[n - i - 1] = arr[i];
  arr[i] = temp;
  print('arr : $arr');
  recursive(arr, i + 1);
}

List<int> reverseString(List<int> arr) {
  recursive(arr, 0);
  return arr;
}
