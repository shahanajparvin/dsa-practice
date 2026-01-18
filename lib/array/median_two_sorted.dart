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

/* Your approach is not actually merging the full arrays. Instead, it’s simulating the merge process and “searching” for the middle element.

You use two pointers to traverse both arrays.

At each step, you pick the smaller current element (like in merge), but you stop as soon as you reach the median.

So instead of creating a new merged array, you’re searching for the median directly.

In short, your approach is:

“Two-pointer search until the median” rather than “full merge.”

It’s efficient and uses O(1) extra space, unlike a full merge that would use O(m + n). 

“This approach simulates merging with two pointers 
but stops once we reach the median. 
So we only traverse roughly half of the total elements, 
giving a time complexity of O((m+n)/2) 
and space complexity of O(1).”

*/

double medianTwoSorted(List<int> arr1, List<int> arr2) {
  int i = 0;
  int j = 0;
  int count = 0;
  int m = arr1.length;
  int n = arr2.length;

  int total = m + n;

  int curr = 0;
  int prev = 0;

  while (count <= total ~/ 2) {
    prev = curr;
    if (i < m && (j >= n || arr1[i] <= arr2[j])) {
      curr = arr1[i];
      i++;
    } else {
      prev = arr2[j];
      j++;
    }
    count++;
  }

  if (total % 2 == 1) {
    return curr.toDouble();
  } else {
    return (curr + prev) / 2;
  }
}

double findMedianTwoSortedArray(List<int> arr1, List<int> arr2) {
  int m = arr1.length;
  int n = arr2.length;

  int total = m + n;
  int count = 0;

  int i = 0, j = 0;

  int current = 0;
  int prev = 0;

  while (count <= total ~/ 2) {
    prev = current;
    if (i < m && (j >= n || arr1[i] <= arr2[j])) {
      current = arr1[i];
      i++;
    } else {
      current = arr2[j];
      j++;
    }
    count++;
  }

  if (total % 2 == 1) {
    return current.toDouble();
  }
  return (prev + current) / 2;
}

void main() {
  List<int> nums1 = [1, 2];
  List<int> nums2 = [3, 4];

  double median = findMedianTwoSortedArray(nums1, nums2);
  print(median); // Output: 2.5
}
