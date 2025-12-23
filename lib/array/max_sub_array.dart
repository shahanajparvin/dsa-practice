import 'dart:math' as Math;

void main() {
  List<int> arr = [-2, -4];

  int result = maxSubArray(arr);

  print('result : $result');
}

int maxSubArray(List<int> arr) {
  int n = arr.length;

  int maxEnd = arr[0];
  int res = arr[0];

  for (int i = 1; i < n; i++) {
    maxEnd = Math.max(maxEnd + arr[i], arr[i]);
    res = Math.max(res, maxEnd);
  }

  return res;
}

int maxSubarraySum(List<int> arr) {
  // Stores the result (maximum sum found so far)
  int res = arr[0];

  // Maximum sum of subarray ending at current position
  int maxEnding = arr[0];

  for (int i = 1; i < arr.length; i++) {
    // Either extend the previous subarray or start
    // new from current element
    maxEnding = Math.max(maxEnding + arr[i], arr[i]);

    // Update result if the new subarray sum is larger
    res = Math.max(res, maxEnding);
  }
  return res;
}
