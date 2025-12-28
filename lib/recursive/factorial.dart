void main() {
  int n = 20;

  int result = factorial(n);

  print('result : $result');
  print(factorialBig(100));
}

int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

BigInt factorialBig(int n) {
  BigInt result = BigInt.one;
  for (int i = 1; i <= n; i++) {
    result *= BigInt.from(i);
  }
  return result;
}
