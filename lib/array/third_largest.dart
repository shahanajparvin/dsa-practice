void main() {
  List<int> arr = [1, 2, 3, 4, 5, 9, 8];

  int result = findThirdLargestLast(arr);

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

int findThirdLargestLast(List<int> arr) {
  int n = arr.length;

  int largest = arr[0];
  int second = 0;
  int third = 0;

  for (int i = 0; i < n; i++) {
    if (arr[i] >= largest) {
      third = second;
      second = largest;
      largest = arr[i];
    } else if (arr[i] < largest && arr[i] > second) {
      third = second;
      second = arr[i];
    } else if (arr[i] < second && arr[i] > third) {
      third = arr[i];
    }
  }
  return third;
}
