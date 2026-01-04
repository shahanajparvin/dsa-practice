void main() {
  int value = 19;

  int result = sumOfSqart(value);

  bool result1 = isHappNumber(value);

  print('result : $result $result1');
}

bool isHappNumber(int n) {
  Set<int> seen = {};
  while (n != 1) {
    if (seen.contains(n)) {
      return false;
    }
    seen.add(n);
    n = sumOfSqart(n);
  }
  return true;
}

int sumOfSqart(int n) {
  int sum = 0;

  while (n > 0) {
    int digit = n % 10;
    sum = sum + (digit * digit);
    n = n ~/ 10;
  }
  return sum;
}

bool isHappy(int n) {
  int slow = n;
  int fast = n;

  do {
    slow = sumOfSqart(slow); // 1 step
    fast = sumOfSqart(sumOfSqart(fast)); // 2 steps
  } while (slow != fast);

  return slow == 1;
}
