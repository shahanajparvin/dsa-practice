void main() {
  List<int> arr = [1, 3, 6, 9, 11, 15, 16, 40, 50, 80];

  int result = binarySearch(arr, 50);

  print('result : $result');
}

int binarySearch(List<int> arr, int target) {
  int n = arr.length;

  int left = 0;
  int right = n - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;

    print(' mid value ${arr[mid]}');

    if (target == arr[mid]) {
      return mid;
    } else if (target > arr[mid]) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
    print(' left $left');

    print(' right $right');
  }

  return -1;
}
