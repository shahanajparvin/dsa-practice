void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6];

  int k = 3;

  final rotated = reversearrayByGroup(arr, k);
  print('reversed array$rotated');
}

List<int> reversearrayByGroup(List<int> arr, int k) {
  int n = arr.length;

  for (int i = 0; i < n; i = i + k) {
    reverseArray(arr, i, i + k - 1);
  }
  return arr;
}

List<int> reverseArray(List<int> arr, int start, int end) {
  int left = start;
  int right;
  if (end >= arr.length) {
    right = arr.length - 1;
  } else {
    right = end;
  }
  print('start $start end $end');

  while (left < right) {
    int temp = arr[left];
    arr[left] = arr[right];
    arr[right] = temp;
    left++;
    right--;
  }
  return arr;
}
