void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6];

  final rotated = rotateArrayByK(arr, 2);
  print('rotate array$rotated');
}

List<int> rotateArrayByK(List<int> arr, int k) {
  int n = arr.length;

  reverseArray(arr, 0, n - 1);

  print('reverseArray array: $arr');

  k = k % n;

  reverseArray(arr, 0, n - k - 1);

  print('reverseArray array1: $arr');

  reverseArray(arr, n - k, n - 1);

  return arr;
}

List<int> reverseArray(List<int> arr, int start, int end) {
  while (start < end) {
    int temp = arr[start];
    arr[start] = arr[end];
    arr[end] = temp;
    start++;
    end--;
  }
  return arr;
}
