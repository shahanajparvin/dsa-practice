void main() {
  List<int> arr = [16, 17, 4, 3, 5, 2];

  List result = arrayLeader(arr);

  print('result : $result');
}

List<int> arrayLeader(List<int> arr) {
  int n = arr.length;

  List<int> output = [];
  output.add(arr[n - 1]);

  int maxRight = arr[n - 1];

  for (int i = n - 2; i >= 0; i--) {
    if (arr[i] > maxRight) {
      output.add(arr[i]);
      maxRight = arr[i];
    }
  }
  return output.reversed.toList();
}
