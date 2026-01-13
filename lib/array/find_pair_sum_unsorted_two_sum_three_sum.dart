void main() {
  List<int> arr = [1, 0, 2, -1, -1, 1, 3, 4, 6, 3, -2];

  int target = 6;

  /* List result = threeSumPair(arr);

  print('result : $result'); */

  List result1 = findPairSum(arr, target);

  print('result : $result1');
}

bool isPairExistWithGivenSome(List<int> arr, int target) {
  Set<int> seen = {};

  List<List> pairList = [];

  for (int i in arr) {
    int lookingValue = target - i;
    if (seen.contains(lookingValue)) {
      pairList.add([i, lookingValue]);
    }
    seen.add(i);
  }

  print('possible pair $pairList');

  return false;
}

List<List> isPairExist1(List<int> arr) {
  int target = 0;

  Set<int> seen = {};

  List<List> pairs = [];

  for (int i in arr) {
    int lookingValue = target - i;

    if (seen.contains(lookingValue)) {
      pairs.add([i, lookingValue]);
    }
    seen.add(i);
  }

  return pairs;
}

List<List<int>> isPairExist(List<int> arr) {
  int target = 0;
  Set<int> seen = {};
  Set<String> usedPairs = {};
  List<List<int>> pairs = [];

  for (int i in arr) {
    int lookingValue = target - i;

    if (seen.contains(lookingValue)) {
      int a = i;
      int b = lookingValue;
      String key = a < b ? "$a, $b" : "$b, $a";

      if (!(usedPairs.contains(key))) {
        usedPairs.add(key);
        pairs.add([a, b]);
      }
    }
    seen.add(i);
  }

  return pairs;
}

List<List<int>> threeSumPair(List<int> arr) {
  int target = 0;
  Set<int> seen = {};
  Set<String> usedPairs = {};
  List<List<int>> pairs = [];

  int n = arr.length;

  for (int i in arr) {
    int nextTarget = target - i;

    for (int j = i; j < n; j++) {
      int lookingValue = nextTarget - j;

      if (seen.contains(lookingValue)) {
        int a = i;
        int b = j;
        int c = lookingValue;
        int minVal = [a, b, c].reduce((x, y) => x < y ? x : y);
        int maxVal = [a, b, c].reduce((x, y) => x > y ? x : y);
        int midVal = a + b + c - minVal - maxVal;

        String key = "$minVal,$midVal,$maxVal";

        if (!(usedPairs.contains(key))) {
          usedPairs.add(key);
          pairs.add([a, b, c]);
        }
      }
      seen.add(j);
    }
  }

  return pairs;
}

// This is two sum for unsorted array
// finad pair array
// This is last final approach
List<List<int>> findPairSum(List<int> arr, int target) {
  int n = arr.length;
  Map<int, int> map = {};
  List<List<int>> pairs = [];

  for (int i = 0; i < n; i++) {
    int lookingValue = target - arr[i];
    if (map.containsKey(lookingValue)) {
      pairs.add([arr[i], lookingValue]);
    }

    map[arr[i]] = i;
  }

  return pairs;
}

// This is three sum for unsorted array
// finad pair array
// This is last final approach
List<List<int>> threeSumSolution(List<int> arr, int target) {
  int n = arr.length;
  Map<int, int> map = {};
  List<List<int>> pairs = [];
  Set<String> usedPairs = {};

  for (int i = 0; i < n - 2; i++) {
    int nextTarget = target - arr[i];
    for (int j = i + 1; j < n; j++) {
      int lookingValue = nextTarget - arr[j];
      if (map.containsKey(lookingValue)) {
        int a = arr[i];
        int b = arr[j];
        int c = lookingValue;
        List<int> triplet = [a, b, c]..sort();
        String key = triplet.join(',');
        if (!usedPairs.contains(key)) {
          usedPairs.add(key);
          pairs.add([a, b, lookingValue]);
        }
      }

      map[arr[j]] = j;
    }
  }

  return pairs;
}
