void main() {
  List<int> array = [2, -3, 4, -1, -2, 1, 7, 3];
  List<int> result = maxSubArrayLast(array);

  print(result);
}

List<int> maxSubArray(List<int> arr) {
  int n = arr.length;

  int maxSum = -10 ^ 8;
  int currentSum = -10 ^ 8;

  for (int i = 0; i < n; i++) {
    if (currentSum + arr[i] < arr[i]) {
      currentSum = arr[i];
    } else {
      currentSum = currentSum + arr[i];
    }
    if (currentSum < maxSum) {
    } else {
      maxSum = currentSum;
    }
    print('---maxsume $currentSum $maxSum');
  }

  return [];
}

List<int> maxSubArray1(List<int> arr) {
  int n = arr.length;

  int start = 0;
  int bestStart = 0;
  int bestEnd = 0;

  int currentSum = 0;
  int maxSum = 0;

  for (int i = 1; i < n; i++) {
    if (arr[i] < currentSum + arr[i]) {
      currentSum = currentSum + arr[i];
    } else {
      currentSum = arr[i];
      start = i;
    }

    if (currentSum > maxSum) {
      maxSum = currentSum;
      bestStart = start;
      bestEnd = i;
    }
  }

  return arr.sublist(bestStart, bestEnd + 1);
}

List<int> maxSubArrayCorrect(List<int> arr) {
  int n = arr.length;
  int maxSum = arr[0];
  int currentSum = arr[0];

  int start = 0;
  int bestStart = 0;
  int bestEnd = 0;

  for (int i = 1; i < n; i++) {
    if (currentSum + arr[i] < arr[i]) {
      currentSum = arr[i];
      start = i;
    } else {
      currentSum += arr[i];
    }

    if (currentSum > maxSum) {
      maxSum = currentSum;
      bestStart = start;
      bestEnd = i;
    }
  }

  return arr.sublist(bestStart, bestEnd + 1);
}

int maxSubArrayOptimize(List<int> arr) {
  int n = arr.length;

  int res = arr[0];
  int maxEnd = arr[0];

  for (int i = 1; i < n; i++) {
    if (maxEnd + arr[i] > arr[i]) {
      maxEnd = maxEnd + arr[i];
    } else {
      maxEnd = arr[i];
    }

    if (maxEnd > res) {
      res = maxEnd;
    } else {
      res = res;
    }
  }
  return res;
}

List<int> maxSubArrayLast(List<int> arr) {
  int n = arr.length;
  int maxSum = arr[0];
  int currentSum = arr[0];

  int start = 0;
  int bestStart = 0;
  int bestEnd = 0;

  /* At every index, I decide whether to extend the existing subarray or start a new subarray from the current element.

If adding the current element to the previous sum gives a better result than starting fresh, I extend the subarray.
Otherwise, I reset and start a new subarray from the current index.

Time Complexity : o(n)
Space Complexity : o(1)

 */
  for (int i = 1; i < n; i++) {
    if (currentSum + arr[i] > arr[i]) {
      currentSum = currentSum + arr[i];
    } else {
      currentSum = arr[i];
      start = i;
    }

    if (currentSum > maxSum) {
      maxSum = currentSum;
      bestStart = start;
      bestEnd = i;
    }
  }

  return arr.sublist(bestStart, bestEnd + 1);
}
