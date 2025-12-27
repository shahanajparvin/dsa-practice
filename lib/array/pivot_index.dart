void main() {
  List<int> array = [1, 7, 6, 5, 3];
  int result = pivotIndexoptimizeSolution(array);

  print(result);
}

int pivotIndexMySolution(List<int> arr) {
  int n = arr.length;

  List<int> answer = List.filled(n, 0);

  int prefixProduct = 0;
  for (int i = 0; i < n; i++) {
    answer[i] = prefixProduct;
    prefixProduct += arr[i];
  }

  print('after prefix array $answer');

  int suffixProduct = 0;
  for (int i = n - 1; i >= 0; i--) {
    answer[i] -= suffixProduct;
    if (answer[i] == 0) {
      return i;
    }
    suffixProduct += arr[i];
  }

  return -1;
}

int pivotIndexoptimizeSolution(List<int> arr) {
  int n = arr.length;

  int totalSum = 0;
  int leftSum = 0;

  for (int i in arr) {
    totalSum += i;
  }

  for (int i = 0; i < n; i++) {
    int rightSum = totalSum - leftSum - arr[i];

    if (leftSum == rightSum) {
      return i;
    }
    leftSum += arr[i];
  }

  return -1;
}
