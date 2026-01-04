void main() {
  int a = 2;

  int n = 5;

  int result = powerOptimize(a, n);

  print('result : $result');
}

int power(int x, int n) {
  if (n == 0) return 1;
  return x * power(x, n - 1);
}

// x^n = (x^(n/2))^2  if n is even

// x^n = x * (x^(n/2))^2  if n is odd

int powerOptimize(int x, int n) {
  if (n == 0) return 1;

  int half = powerOptimize(x, n ~/ 2);

  if (n % 2 == 0) {
    return half * half;
  } else {
    return x * (half * half);
  }
}
