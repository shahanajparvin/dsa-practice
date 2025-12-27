void main() {
  List<int> array = [1, 2, 3, 4];

  List<int> result = productExceptSelf(array);

  print(result);
}

List<int> productExceptSelf(List<int> arr) {
  int n = arr.length;

  List<int> answer = List.filled(n, 1);

  int prefixProduct = 1;
  for (int i = 0; i < n; i++) {
    answer[i] = prefixProduct;
    prefixProduct *= arr[i];
  }

  print('after prefix array $answer');

  int suffixProduct = 1;
  for (int i = n - 1; i >= 0; i--) {
    answer[i] *= suffixProduct;
    suffixProduct *= arr[i];
  }

  return answer;
}
