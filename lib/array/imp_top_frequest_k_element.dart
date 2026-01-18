void main() {
  List<int> arr = [1, 1, 2, 2, 2, 2, 3, 3, 3, 3];

  int k = 2;

  dynamic result = topFrequentElementLast(arr, k);

  print('result : $result');
}

List<int> topFrequentElement(List<int> arr, int k) {
  int n = arr.length;

  Map<int, int> freq = {};

  for (int i = 0; i < n; i++) {
    freq[arr[i]] = (freq[arr[i]] ?? 0) + 1;
  }

  print('freq : $freq');
  //n + 1 ensures the bucket has an index for every possible frequency from 0 to n, because a number can appear up to n times.
  List<List<int>> bucket = List.generate(n + 1, (index) => []);

  for (var entry in freq.entries) {
    int num = entry.key; // the number
    int count = entry.value; // its frequency
    bucket[count].add(num);
  }

  print('bucket : $bucket');

  List<int> result = [];

  for (int i = bucket.length - 1; i >= 0 && result.length < k; i--) {
    if (bucket[i].isNotEmpty) {
      result.addAll(bucket[i]);
    }
  }
  print('result : $result');
  return result.sublist(0, k); // just top k
}

List<int> topFrequentElementLast(List<int> arr, int k) {
  int n = arr.length;

  Map<int, int> freq = {};
  for (int i = 0; i < n; i++) {
    freq[arr[i]] = (freq[arr[i]] ?? 0) + 1;
  }

  List<List<int>> bucket = List.generate(n + 1, (index) => []);

  for (var entry in freq.entries) {
    bucket[entry.value].add(entry.key);
  }

  List<int> result = [];

  for (int i = bucket.length - 1; i >= 0 && result.length < k; i--) {
    if (bucket.isNotEmpty) {
      result.addAll(bucket[i]);
    }
  }

  return result.sublist(0, k);
}
