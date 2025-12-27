void main() {
  List<int> array = [1, 7, 6, 5, 3];
  int target = 4;
  int result = closetValue(array, target);

  print(result);
}

int closetValue(List<int> arr, int target) {
  int closetIndex = 0;
  int minumDifferance = (target - arr[0]).abs();

  for (int i = 1; i < arr.length; i++) {
    int calculateDifference = (target - arr[i]).abs();

    if (calculateDifference == 0) {
      return i;
    }
    if (minumDifferance > calculateDifference) {
      minumDifferance = calculateDifference;
      closetIndex = i;
    }
  }

  return closetIndex;
}
