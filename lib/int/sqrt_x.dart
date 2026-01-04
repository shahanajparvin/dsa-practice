void main() {
  int value = 9;

  int result = mySqrt(value);

  print('result : $result');
}

int mySqrt(int x) {
  if (x < 2) {
    return x;
  }

  int left = 1;
  int right = x ~/ 2;
  int answer = 0;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;

    if (mid <= x ~/ mid) {
      answer = mid;
      left = left + 1;
    } else {
      right = right - 1;
    }
  }

  return answer;
}
