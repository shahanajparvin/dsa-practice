int findMissingNumberXOR(List<int> arr, int n) {
  int xorAll = 0;
  int xorArr = 0;

  // XOR all numbers from 1 to N
  for (int i = 1; i <= n; i++) {
    xorAll ^= i;
  }

  // XOR all numbers in the array
  for (int num in arr) {
    xorArr ^= num;
  }

  // missing number
  return xorAll ^ xorArr;
}

int findMissingNumber(List<int> arr, int n) {
  int totalSum = n * (n + 1) ~/ 2; // sum from 1 to N
  int arrSum = arr.fold(0, (sum, element) => sum + element); // sum of array
  return totalSum - arrSum; // missing number
}

void main() {
  print(findMissingNumberXOR([1, 2, 4, 5], 5)); // Output: 3
  print(findMissingNumberXOR([1, 3], 3)); // Output: 2
}
