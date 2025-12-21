void main() {
  List<int> arr1 = [1, 2, 3];
  List<int> arr2 = [1, 2, 2];

  bool result = isArraySame(arr1, arr2);

  print('result : $result');
}

bool isArraySame(List<int> arr1, List<int> arr2) {
  if (arr1.length != arr2.length) {
    return false;
  }

  Map<int, int> freq = {};

  for (int i in arr1) {
    freq[i] = freq[i] ?? 0 + 1;
  }

  for (int i in arr2) {
    if (!(freq.containsKey(i))) {
      return false;
    }

    freq[i] = freq[i]! - 1;

    if (freq[i]! < 0) {
      return false;
    }
  }

  return true;
}
