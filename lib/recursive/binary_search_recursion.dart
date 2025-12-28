void main() {
  List<int> arr = [1, 3, 6, 9, 11, 15, 16, 40, 50, 80];

  int result = recursiveBinary(arr, 0, arr.length - 1, 3);

  print('result : $result');
}

int recursiveBinary(List<int> arr, int left, int right, int target) {
  print('---left $left right $right');

  if (left > right) {
    return -1;
  }

  int mid = left + (right - left) ~/ 2;

  if (target == arr[mid]) {
    return mid;
  }

  if (target > arr[mid]) {
    return recursiveBinary(arr, mid + 1, right, target);
  } else {
    return recursiveBinary(arr, left, mid - 1, target);
  }
}
