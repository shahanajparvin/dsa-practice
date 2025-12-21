void main() {
  List<int> arr = [1, 2, 3, 4, 6];
  int target = 6;

  bool result = isPairExistWithGivenSome(arr, target);

  print('result : $result');
}

bool isPairExistWithGivenSome(List<int> arr, int target) {
  Set<int> seen = {};

  for (int i in arr) {
    int lookingValue = target - i;
    if (seen.contains(lookingValue)) {
      return true;
    }
    seen.add(i);
  }

  return false;
}
