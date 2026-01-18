import 'dart:math' as Math;

int lengthOfLIS(List<int> nums) {
  if (nums.isEmpty) return 0;

  // dp[i] will store the length of the longest increasing subsequence ending at index i
  List<int> dp = List.filled(nums.length, 1);

  for (int i = 1; i < nums.length; i++) {
    for (int j = 0; j < i; j++) {
      if (nums[i] > nums[j]) {
        dp[i] = Math.max(dp[i], dp[j] + 1);
      }
    }
  }

  // The answer is the maximum value in dp
  return dp.reduce((a, b) => a > b ? a : b);
}

void main() {
  List<int> nums1 = [10, 9, 2, 5, 3, 7, 101, 18];
  print(lengthOfLIS(nums1)); // Output: 4 // 2, 5, 7, 101 or 2, 3, 7, 101

  List<int> nums2 = [0, 1, 0, 3, 2, 3];
  print(lengthOfLIS(nums2)); // Output: 4 // 0, 1, 2, 3
}
