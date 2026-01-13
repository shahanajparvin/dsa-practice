void main() {
  List<int> array = [1, 1, 2, 2, 3, 3, 4, 5];

  List<int> result = removeDuplicateFromSortArray(array);

  print(result);
}

/*
1. Understand the problem: Remove duplicates from a sorted array in-place and return only unique elements.

2. Use two pointers:

i → iterates through the array.

3. indexPosition → tracks where to place the next unique element.

Initialize: Set indexPosition = 1 because the first element is always unique.

4. Iterate and compare:

For each arr[i], compare with arr[i-1].

If different → copy arr[i] to arr[indexPosition] and increment indexPosition.

5. Return result: Take arr.sublist(0, indexPosition) → contains all unique elements.

6. Complexity:

Time: O(n) (single pass)

Space: O(1) (in-place)

7. Dry-run example (quick):
[1, 1, 2, 3, 3, 4] → process → [1, 2, 3, 4] */

List<int> removeDuplicateFromSortArray(List<int> arr) {
  int n = arr.length;

  int indexPosition = 1;

  for (int i = 1; i < n; i++) {
    if (arr[i] != arr[i - 1]) {
      print('arr2 $arr');
      arr[indexPosition] = arr[i];
      indexPosition++;
      print(arr);
    }
    print('arr1 $arr');
  }

  return arr.sublist(0, indexPosition);
}

List<int> movetoAllZeroRight(List<int> arr) {
  int n = arr.length;

  int indexPosition = 0;

  for (int i = 0; i < n; i++) {
    if (arr[i] > 0) {
      print('arr2 $arr');
      arr[indexPosition] = arr[i];
      print(arr);
      indexPosition++;
    }
  }

  print('indexPosition $indexPosition');

  for (int i = indexPosition; i < n; i++) {
    arr[i] = 0;
  }

  return arr;
}

List<int> moveAllNegativeRight1(List<int> arr) {
  int n = arr.length;
  int indexPosition = 0;

  for (int i = 0; i < n; i++) {
    if (arr[i] >= 0) {
      // Proper swap using temp
      int temp = arr[indexPosition];
      arr[indexPosition] = arr[i];
      arr[i] = temp;

      indexPosition++;
    }
  }

  return arr;
}

List<int> movetoAllNegativeRight(List<int> arr) {
  int n = arr.length;

  int indexPosition = 0;

  for (int i = 0; i < n; i++) {
    if (arr[i] >= 0) {
      int temp = arr[indexPosition];
      arr[indexPosition] = arr[i];
      arr[i] = temp;
      indexPosition++;
    }
  }

  print('indexPosition $indexPosition');

  return arr;
}

List<int> movetoAllNegativeRightReservePosition(List<int> arr) {
  int n = arr.length;

  int indexPosition = 0;

  for (int i = 0; i < n; i++) {
    if (arr[i] >= 0) {
      /*  int temp = arr[indexPosition];
      arr[indexPosition] = arr[i];
      arr[i] = temp;
      indexPosition++; */

      int temp = arr[i];
      int j = i;

      // Shift all negatives between insertPos and i to the right
      while (j > indexPosition) {
        arr[j] = arr[j - 1];
        j--;
      }

      arr[indexPosition] = temp;
      indexPosition++;
    }
  }

  print('indexPosition $indexPosition');

  return arr;
}
