import 'dart:math' as Math;

int maxProduct(List<int> arr) {
  int n = arr.length;

  int maxA = arr[0];
  int maxB = 0, maxC = 0;
  int minA = arr[0];
  int minB = 0;

  for (int i = 1; i < n; i++) {
    // find three max
    if (arr[i] > maxA) {
      maxC = maxB;
      maxB = maxA;
      maxA = arr[i];
    } else if (arr[i] > maxB) {
      maxC = maxB;
      maxB = arr[i];
    } else if (arr[i] > maxC) {
      maxC = arr[i];
    }

    // find two minimum
    if (arr[i] < minA) {
      minB = minA;
      minA = arr[i];
    } else if (arr[i] < minB) {
      minB = arr[i];
    }
  }

  print(' maxa $maxA maxb $maxB maxC $maxC');
  print(' minA $minA minB $minB');

  return Math.max(minA * minB * maxA, maxA * maxB * maxC);
}

void main() {
  List<int> arr = [10, 3, 5, 6, 20];

  int result = maxProduct(arr);
  print('result $result');
}
