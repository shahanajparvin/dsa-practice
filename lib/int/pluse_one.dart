void main() {
  List<int> arr = [9, 9, 9];

  List<int> result = plusOne(arr);

  print('result : $result');
}

List<int> plusOne(List<int> arr) {
  int carry = 1;
  int n = arr.length;

  for (int i = n - 1; i >= 0; i--) {
    int value = arr[i] + 1;
    arr[i] = (value) % 10;
    carry = value ~/ 10;
  }

  if (carry > 0) {
    arr.insert(0, carry);
  }

  return arr;
}
