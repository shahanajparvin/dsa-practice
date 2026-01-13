void main() {
  // Call the separate backtrack function
  // backtrack(nums, 0, [], allSubsets);

  // print(allSubsets);

  List<int> nums = [1, 2, 3];
  List<List<int>> allSubsets = [];

  backtrack(nums: nums, current: [], index: 0, allSubsets: allSubsets);

  print(allSubsets);
}

// Backtracking function completely separate
void backtrack({
  required List<int> nums,
  required int index,
  required List<int> current,
  required List<List<int>> allSubsets,
}) {
  // Process current solution: add a copy
  allSubsets.add(List.from(current));

  print('allSubsets $allSubsets');

  // Try each option starting from current index
  for (int i = index; i < nums.length; i++) {
    // Make the choice
    current.add(nums[i]);

    print('current $current');

    // Recurse
    backtrack(
      nums: nums,
      index: i + 1,
      current: current,
      allSubsets: allSubsets,
    );

    print('index call $i');

    print('remove before current $current');

    // Undo the choice (backtrack)
    current.removeLast();

    print('remove after current $current');
  }
}

backTrackingMyCode({
  required List<int> nums,
  required List<int> current,
  required int index,
  required List<List<int>> result,
}) {
  result.add(List.from(current));

  for (int i = index; i < nums.length; i++) {
    current.add(nums[i]);
    backTrackingMyCode(
      nums: nums,
      current: current,
      index: i + 1,
      result: result,
    );
    current.removeLast();
  }
}

/* Here is three rules for backtracking

1. make a choice
2. recurse
3. undo the choice (backtrack)

 */
