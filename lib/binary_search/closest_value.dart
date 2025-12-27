void main() {
  List<int> array = [1, 3, 4, 5, 8];
  int target = 6;
  int result = closestValue(array, target);

  print(result);
}

int closestValue(List<int> arr, int target) {
  int n = arr.length;
  int left = 0;
  int right = n - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;

    print(' mid $mid');
    if (target == arr[mid]) {
      return arr[mid];
    }

    if (target > arr[mid]) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  print(' left $left');

  print(' right $right');

  int closetIndex;

  if ((target - arr[left]).abs() < (target - arr[right]).abs()) {
    closetIndex = left;
  } else {
    closetIndex = right;
  }

  return arr[closetIndex];
}
