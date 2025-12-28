void main() {
  int result = fbRecursive(9);

  print('result : $result');
}

int fibonacci(int n) {
  int a = 0;
  int b = 1;
  for (int i = 0; i < n; i++) {
    print(a);
    int next = a + b;
    a = b;
    b = next;
  }
  return a;
}

List<int> fibonacciSeries(int n) {
  List<int> fb = List.filled(n, 0);
  fb[0] = 0;
  fb[1] = 1;
  for (int i = 2; i < n; i++) {
    fb[i] = fb[i - 1] + fb[i - 2];
  }
  return fb;
}

int fbRecursive(int n) {
  if (n == 0) return 0;
  if (n == 1) return 1;
  return fbRecursive(n - 1) + fbRecursive(n - 2);
}
