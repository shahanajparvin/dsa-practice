import 'dart:math' as Math;

void main() {
  List<int> arr = [0, 1, 0, 1, 1, 1, 1];
  int result = maximumConsecutiveZeroOrOne(arr);

  print('result : $result');
}

int maximumConsecutiveZeroOrOne(List<int> arr) {
  int n = arr.length;

  if (n == 0) return 0;

  int maxCount = 1;
  int startPostion = 0;
  int calculateCount = 1;
  int endPosition = 0;
  int start = 0;
  for (int i = 0; i < n - 1; i++) {
    if (arr[i] == arr[i + 1]) {
      calculateCount++;
    } else {
      calculateCount = 1;
      start = i + 1; // reset start of new sequence
    }

    if (calculateCount > maxCount) {
      maxCount = calculateCount;
      startPostion = start;
      endPosition = i + 1;
    }
    print('--start $startPostion end $endPosition');
  }

  return maxCount;
}
