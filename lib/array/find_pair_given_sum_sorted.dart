import 'dart:isolate';

void main() {
  List<int> arr = [1, 0, 2, -1, -1, 1, 1, 3, 4, 6, 3, -2];
  int target = 0;

  dynamic result = findPairSumLast(arr, target);

  print('result : $result');

  dynamic result1 = findPairThreeSumSortedArray(arr, 0);

  print('result : $result1');
}

List<List<int>> isPairExistWithGivenSome(List<int> arr, int target) {
  int n = arr.length;
  int left = 0;
  int right = n - 1;

  List<List<int>> pair = [];

  while (left < right) {
    print('left $left');
    int sum = arr[left] + arr[right];
    if (sum == target) {
      pair.add([arr[left], arr[right]]);
      left++;
      right--;
    } else if (sum < target) {
      left++;
      print('left $left');
    } else if (sum > target) {
      right--;
      print('right $right');
    }
  }

  return pair;
}

// This is two sum for sorted array
// finad pair array
// This is last final approach
/* Time Complexity: O(n)

Each pointer moves at most n times.

Space Complexity: O(1)

Only two pointers used, no extra data structures. */
List<List<int>> findPairSortedArray(List<int> arr, int target) {
  int n = arr.length;
  int left = 0;
  int right = n - 1;
  List<List<int>> pairs = [];

  while (left < right) {
    int sum = arr[left] + arr[right];

    if (target == sum) {
      pairs.add([arr[left], arr[right]]);
      left++;
      right--;
    } else if (sum < target) {
      left++;
    } else {
      right--;
    }
  }
  return pairs;
}

// This is three sum for sorted array
// finad pair array
// This is last final approach
// Aspect	Complexity
/* Time	O(n²)
Space (excluding output)	O(1)
Space (including output)	O(k) */
List<List<int>> findPairThreeSumSortedArray(List<int> arr, int target) {
  arr.sort();
  int n = arr.length;

  List<List<int>> pairs = [];
  Set<String> usedPairs = {};

  for (int i = 0; i < n - 2; i++) {
    if (i > 0 && arr[i] == arr[i - 1]) {
      continue;
    }
    int left = i + 1;
    int right = n - 1;
    int nextTarget = target - arr[i];

    while (left < right) {
      int sum = arr[left] + arr[right];

      if (nextTarget == sum) {
        int a = arr[i];
        int b = arr[left];
        int c = arr[right];
        pairs.add([a, b, c]);
        while (left < right && arr[left] == arr[left + 1]) {
          left++;
        }
        while (left < right && arr[right] == arr[right + 1]) {
          right--;
        }
        /* List<int> triplet = [a, b, c]..sort();
        String key = triplet.join(',');
        if (!usedPairs.contains(key)) {
          usedPairs.add(key);
          pairs.add([a, b, c]);
        } */
        left++;
        right--;
      } else if (sum < nextTarget) {
        left++;
      } else {
        right--;
      }
    }
  }
  return pairs;
}

List<List<int>> findPairSumLast(List<int> arr, int target) {
  int n = arr.length;

  int left = 0;
  int right = n - 1;

  List<List<int>> pair = [];

  while (left < right) {
    int sum = arr[left] + arr[right];

    if (sum == target) {
      pair.add([arr[left], arr[right]]);
      int leftValue = arr[left];
      while (left < right && arr[left] == leftValue) {
        left++;
      }
      int rightValue = arr[right];
      while (left < right && arr[right] == rightValue) {
        right--;
      }
    } else if (sum < target) {
      left++;
    } else {
      right--;
    }
  }

  return pair;
}

List<List<int>> findPairThreeSum(List<int> arr, int target) {
  arr.sort();

  int n = arr.length;

  List<List<int>> pair = [];

  for (int i = 0; i < n - 2; i++) {
    if (i > 0 && arr[i] == arr[i - 1]) {
      continue;
    }
    int nextTarget = target - arr[i];
    int left = i + 1;
    int right = n - 1;

    while (left < right) {
      int sum = arr[left] + arr[right];
      if (sum == nextTarget) {
        pair.add([arr[i], arr[left], arr[right]]);

        int leftValue = arr[left];
        while (left < right && arr[left] == leftValue) {
          left++;
        }
        int rightValue = arr[right];
        while (left < right && arr[right] == rightValue) {
          right--;
        }
      } else if (sum < nextTarget) {
        left++;
      } else {
        right--;
      }
    }
  }
  return pair;
}
