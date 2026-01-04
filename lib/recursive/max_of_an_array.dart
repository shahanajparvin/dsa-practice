import 'dart:math' as math;

void main() {
  List<int> arr = [1, 4, 6, 3, 0];

  int result = recursiveMax1(arr, 0);

  print('result : $result');
}

int recursive(List<int> arr, int position, int max) {
  int n = arr.length;
  if (position == n - 1) {
    return math.max(max, arr[position]);
  }
  int newMax = math.max(max, arr[position]);
  return math.max(max, recursive(arr, position + 1, newMax));
}

int recursiveMax(List<int> arr) {
  return recursive(arr, 0, arr[0]);
}

int recursiveMax1(List<int> arr, int position) {
  if (position == arr.length - 1) {
    print('----------arr[position] ${arr[position]}');
    return arr[position];
  }
  int maxInRest = recursiveMax1(arr, position + 1);
  return (arr[position] > maxInRest) ? arr[position] : maxInRest;
}
