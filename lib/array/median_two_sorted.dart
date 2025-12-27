double findMedianMerge(List<int> nums1, List<int> nums2) {
  int m = nums1.length;
  int n = nums2.length;
  int total = m + n;

  int i = 0, j = 0;
  int count = 0;

  int prev = 0, curr = 0;

  while (count <= total ~/ 2) {
    prev = curr;

    if (i < m && (j >= n || nums1[i] <= nums2[j])) {
      curr = nums1[i];
      i++;
    } else {
      curr = nums2[j];
      j++;
    }

    count++;
  }

  // Odd total length → median = curr
  if (total % 2 == 1) return curr.toDouble();

  // Even total length → median = average of prev and curr
  return (prev + curr) / 2.0;
}
