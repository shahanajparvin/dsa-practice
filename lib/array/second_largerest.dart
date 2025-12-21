void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 9, 8];

  int result = findSecontLargestElement(arr);

  print('result : $result');
}

int findSecontLargestElement(List<int> arr) {
  int n = arr.length;

  if (n < 1) {
    return 0;
  }

  int largest = arr[0];
  int secondLargest = 0;

  for (int i = 1; i < n; i++) {
    if (arr[i] >= largest) {
      secondLargest = largest;
      largest = arr[i];
    } else if (arr[i] < largest && arr[i] > secondLargest) {
      secondLargest = arr[i];
    }
  }
  return secondLargest;
}
