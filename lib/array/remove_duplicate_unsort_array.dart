void main() {
  List<int> array = [1, 1, 2, 2, 3, 3, 4, 5];

  List<int> result = removeduplicate(array);

  print(result);
}

List<int> removeduplicate(List<int> arr) {
  Map<int, bool> hashMap = {};

  for (int i in arr) {
    if (!(hashMap.containsKey(i))) {
      hashMap[i] = true;
    }
  }

  List<int> result = hashMap.keys.toList();
  return result;
}
