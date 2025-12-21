int findSmallestElent(List<int> arr) {
  int n = arr.length;
  int smallest = arr[0];
  for (int i = 1; i < n; i++) {
    if (smallest > arr[i]) {
      smallest = arr[i];
    }
  }
  return smallest;
}
