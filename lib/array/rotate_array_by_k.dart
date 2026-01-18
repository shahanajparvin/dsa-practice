void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6];

  /* final rotated = rotateArrayByK(arr, 2);
  print('rotate array$rotated');

  rotateArrayByOne(); */
  rotateArrByLeftOne(arr);
}

dynamic rotateArrayByOne() {
  List arr = [1, 2, 3, 4, 5];

  int length = arr.length;

  if (length <= 1) return;

  int lastValue = arr[length - 1];

  for (int i = length - 2; i >= 0; i--) {
    arr[i + 1] = arr[i];
  }

  arr[0] = lastValue;

  print('rotated array: $arr');
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

List<int> rotateArrayByK(List<int> arr, int k) {
  int n = arr.length;

  reverseArray(arr, 0, n - 1);

  print('reverseArray array: $arr');

  k = k % n;

  reverseArray(arr, 0, k - 1);

  print('reverseArray array1: $arr');

  reverseArray(arr, k, n - 1);

  return arr;
}

List<int> rotateArrByLeftOne(List<int> arr) {
  int n = arr.length;

  if (n <= 1) {
    return arr;
  }

  int last = arr[n - 1];

  for (int i = n - 2; i >= 0; i--) {
    arr[i + 1] = arr[i];
  }
  arr[0] = last;
  print('rotated array: $arr');
  return arr;
}
