void main() {
  List<int> arr = [1, 4, 5, 3, 2];

  int result = sumAllSubArrayLast(arr);

  print('result : $result');
}

int sumAllSubArray(List<int> arr) {
  int sum = 0;
  int n = arr.length;
  for (int i = 0; i < n; i++) {
    sum += arr[i] * (i + 1) * (n - i);
  }
  return sum;
}

int sumAllSubArrayLast(List<int> arr) {
  int n = arr.length;
  int result = 0;

  for (int i = 0; i < n; i++) {
    result = result + (arr[i] * (i + 1) * (n - i));
  }

  return result;
}
