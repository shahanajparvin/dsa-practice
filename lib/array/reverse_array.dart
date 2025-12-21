void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8];

  List<int> result = reverseArray(arr);

  print('result : $result');
}

List<int> reverseArray(List<int> arr) {
  int left = 0;
  int right = arr.length - 1;

  while (left < right) {
    int temp = arr[left];
    arr[left] = arr[right];
    arr[right] = temp;
    left++;
    right--;
  }
  return arr;
}
