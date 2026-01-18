import 'dart:math' as Math;

int trappingRainingWter(List<int> height) {
  int n = height.length;

  List<int> leftMax = List.filled(n, 0);
  List<int> rightMax = List.filled(n, 0);

  int maxWater = -1;
  int index = -1;

  leftMax[0] = height[0];
  for (int i = 1; i < n; i++) {
    leftMax[i] = Math.max(leftMax[i - 1], height[i]);
  }

  rightMax[n - 1] = height[n - 1];
  for (int i = n - 2; i >= 0; i--) {
    rightMax[i] = Math.max(rightMax[i + 1], height[i]);
  }

  int totalWater = 0;
  for (int i = 0; i < n; i++) {
    int water = Math.max(0, (Math.min(leftMax[i], rightMax[i])) - height[i]);
    print(' index $i water $water ');
    totalWater += water;

    if (water > maxWater) {
      maxWater = water;
      index = i;
    }
  }
  print(' index $index most water $maxWater ');
  return totalWater;
}

void main() {
  List<int> height = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1];
  int result = trappingRainingWter(height);
  print('result $result');
}
