void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 9, 8];

  int result = findThirdLargestElement(arr);

  print('result : $result');
}

int findThirdLargestElement(List<int> arr) {
  int n = arr.length;

  if (n < 1) {
    return 0;
  }

  int largest = arr[0];
  int secondLargest = 0;
  int thirdLargest = 0;

  for (int i = 1; i < n; i++) {
    if (arr[i] >= largest) {
      thirdLargest = secondLargest;
      secondLargest = largest;
      largest = arr[i];
    } else if (arr[i] < largest && arr[i] > secondLargest) {
      thirdLargest = secondLargest;
      secondLargest = arr[i];
    } else if (arr[i] < secondLargest && arr[i] > thirdLargest) {
      thirdLargest = arr[i];
    }
  }
  return thirdLargest;
}
