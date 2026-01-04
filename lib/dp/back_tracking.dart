void main() {
  List<int> nums = [1, 2, 3];
  List<List<int>> allSubsets = [];

  // Call the separate backtrack function
  backtrack(nums, 0, [], allSubsets);

  print(allSubsets);
}

// Backtracking function completely separate
void backtrack(
  List<int> nums,
  int index,
  List<int> current,
  List<List<int>> allSubsets,
) {
  // Process current solution: add a copy
  allSubsets.add(List.from(current));

  print('allSubsets $allSubsets');

  // Try each option starting from current index
  for (int i = index; i < nums.length; i++) {
    // Make the choice
    current.add(nums[i]);

    print('current $current');

    // Recurse
    backtrack(nums, i + 1, current, allSubsets);

    print('index call $i');

    print('remove before current $current');

    // Undo the choice (backtrack)
    current.removeLast();

    print('remove after current $current');
  }
}
