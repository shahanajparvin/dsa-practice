List<List<int>> consucutiveSumArray(int n) {
  List<List<int>> result = [];
  int count = 0;

  for (int k = 1; k * (k - 1) ~/ 2 < n; k++) {
    int remaining = n - k * (k - 1) ~/ 2;
    print(' remaining value $remaining');
    if (remaining % k == 0) {
      int x = remaining ~/ k;
      print(' x value $x');

      if (x > 0) {
        List<int> sequence = [];

        for (int i = 0; i < k; i++) {
          sequence.add(x + i);
        }
        result.add(sequence);
        count++;
      }
    }
  }

  print(' count $count');

  return result;
}

List<List<int>> consecutiveNumberArrays(int n) {
  List<List<int>> result = [];

  for (int k = 1; k * (k - 1) ~/ 2 < n; k++) {
    int remaining = n - k * (k - 1) ~/ 2;

    if (remaining % k == 0) {
      int x = remaining ~/ k;

      if (x > 0) {
        List<int> sequence = [];
        for (int i = 0; i < k; i++) {
          sequence.add(x + i);
        }
        result.add(sequence);
      }
    }
  }

  return result;
}

void main() {
  print(consecutiveSum(9));
}

List<List<int>> consecutiveSum(int n) {
  List<List<int>> result = [];
  int count = 0;

  for (int k = 1; k * (k - 1) ~/ 2 < n; k++) {
    int remaining = n - k * (k - 1) ~/ 2;

    if (remaining % k == 0) {
      int x = remaining ~/ k;

      if (x > 0) {
        List<int> sequence = [];

        for (int i = 0; i < k; i++) {
          sequence.add(x + i);
        }
        result.add(sequence);
        count++;
      }
    }
  }
  return result;
}
