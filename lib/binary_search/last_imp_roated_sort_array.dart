void main() {
  List<int> arr = [4, 5, 6, 7, 0, 1, 2];

  int result = searchFromRoatedSortArray(arr, 4);

  print('result : $result');
}

int searchRotatedArray(List<int> nums, int target) {
  int left = 0;
  int right = nums.length - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;

    if (nums[mid] == target) {
      return mid;
    }

    // Left half is sorted
    if (nums[left] <= nums[mid]) {
      if (target >= nums[left] && target < nums[mid]) {
        right = mid - 1;
      } else {
        left = mid + 1;
      }
    }
    // Right half is sorted
    else {
      if (target > nums[mid] && target <= nums[right]) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
  }

  return -1;
}

int searchRoatedArrayMy(List<int> arr, int target) {
  int n = arr.length;
  int left = 0;
  int right = n - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;

    if (target == arr[mid]) {
      return mid;
    }

    if (arr[left] <= arr[mid]) {
      if (target >= arr[left] && target < arr[mid]) {
        right = mid - 1;
      } else {
        left = mid + 1;
      }
    } else {
      if (target > arr[mid] && target <= arr[right]) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
  }

  return -1;
}

int searchFromRoatedSortArray(List<int> arr, int target) {
  int n = arr.length;
  int left = 0;
  int right = n - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;

    if (target == arr[mid]) {
      return mid;
    }

    // left half is sorted
    if (arr[left] <= arr[mid]) {
      if (target >= arr[left] && target < arr[mid]) {
        right = mid - 1;
      } else {
        left = mid + 1;
      }
    } else {
      // right half is sorted
      if (target > arr[mid] && target <= arr[right]) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
  }
  return -1;
}
