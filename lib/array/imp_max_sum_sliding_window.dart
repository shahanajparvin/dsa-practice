int maxSumSlidingWindow(List<int> arr, int k) {
  if (arr.isEmpty) {
    return 0;
  }

  // first we calculate first windowsum
  int windowSum = 0;
  for (int i = 0; i < k; i++) {
    windowSum += arr[i];
  }

  int maxSum = windowSum;

  for (int i = k; i < arr.length; i++) {
    windowSum = windowSum - arr[i - k] + arr[i];
    if (windowSum > maxSum) {
      maxSum = windowSum;
    }
  }

  return maxSum;
}

void main() {
  List<int> arr = [2, 1, 5, 1, 3, 2];
  int k = 3;
  print(maxSumSlidingWindow(arr, k)); // Output: 9
}
