/* void permutations(String s) {
  List<String> chars = s.split('')..sort();

  do {
    print(chars.join());
  } while (nextPermutation(chars));
}

bool nextPermutation(List<String> arr) {
  int i = arr.length - 2;

  // step 1
  while (i >= 0 && arr[i] >= arr[i + 1]) {
    i--;
  }

  if (i < 0) return false;

  // step 2
  int j = arr.length - 1;
  while (arr[j] <= arr[i]) {
    j--;
  }

  // step 3
  _swap(arr, i, j);

  // step 4
  _reverse(arr, i + 1);

  return true;
}

void _swap(List<String> arr, int i, int j) {
  String temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

void _reverse(List<String> arr, int start) {
  int left = start, right = arr.length - 1;
  while (left < right) {
    _swap(arr, left, right);
    left++;
    right--;
  }
}
 */
/* 
2️⃣ Key Facts (Interview Must-Know)

Number of permutations = n!

Uses backtracking

Each position tries all remaining characters

3️⃣ Core Idea (Simple Explanation)

For each character:

Fix one character at the first position

Permute the remaining characters

Backtrack (undo changes)
 */
void permute(List<String> chars, int index) {
  // base case
  if (index == chars.length) {
    print(chars.join());
    return;
  }

  for (int i = index; i < chars.length; i++) {
    // swap
    String temp = chars[index];
    chars[index] = chars[i];
    chars[i] = temp;

    // recursive call
    permute(chars, index + 1);

    // backtrack (undo swap)
    temp = chars[index];
    chars[index] = chars[i];
    chars[i] = temp;
  }
}

void main() {
  String s = "abc";
  permute(s.split(''), 0);
}
