void main() {
  List<int> arr1 = [1, 3, 5];

  List<int> arr2 = [2, 4, 6, 8];

  List<int> result = mergeTwoSotedArrayLast(arr1, arr2);

  print('result : $result');
}

List<int> mergeTwoSortedArray(List<int> a, List<int> b) {
  int n1 = a.length;
  int n2 = b.length;
  List<int> result = List.filled(n1 + n2, 0);

  int left = 0;
  int right = 0;

  int i = 0;

  while (left < n1 && right < n2) {
    if (a[left] < b[right]) {
      result[i++] = a[left++];
    } else {
      result[i++] = b[right++];
    }
  }

  while (left < n1) {
    result[i++] = a[left++];
  }

  while (right < n2) {
    result[i++] = b[right++];
  }

  return result;
}

List<int> mergeTwoSortedArray1(List<int> arr1, List<int> arr2) {
  int m = arr1.length;
  int n = arr2.length;

  List<int> result = List.filled(m + n, 0);

  int left = 0, right = 0;
  int i = 0;

  while (left < m && right < n) {
    if (arr1[left] < arr2[right]) {
      result[i++] = arr1[left++];
    } else {
      result[i++] = arr2[right++];
    }
  }

  /* while (left < m) {
    result[i++] = arr1[left++];
  }
  while (right < n) {
    result[i++] = arr2[right++];
  } */
  return result;
}

List<int> mergeTwoSotedArrayLast(List<int> arr1, List<int> arr2) {
  int m = arr1.length;
  int n = arr2.length;

  List<int> result = List.filled(m + n, 0);

  int left = 0, right = 0;
  int i = 0;

  while (left < m && right < n) {
    if (arr1[left] < arr2[right]) {
      result[i++] = arr1[left++];
    } else {
      result[i++] = arr2[right++];
    }
  }

  while (left < m) {
    result[i++] = arr1[left++];
  }

  while (right < n) {
    result[i++] = arr2[right++];
  }

  return result;
}
