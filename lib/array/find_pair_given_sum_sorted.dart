void main() {
  List<int> arr = [1, 2, 3, 4, 6];
  int target = 3;

  bool result = isPairExistWithGivenSome(arr, target);

  print('result : $result');
}

bool isPairExistWithGivenSome(List<int> arr, int target) {
  int n = arr.length;
  int left = 0;
  int right = n - 1;

  while (left < right) {
    print('left $left');
    int sum = arr[left] + arr[right];
    if (sum == target) {
      return true;
    } else if (sum < target) {
      left++;
      print('left $left');
    } else if (sum > target) {
      right--;
      print('right $right');
    }
  }

  return false;
}
