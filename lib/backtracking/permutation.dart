void permute(List<int> nums, List<int> path, List<List<int>> result) {
  print('path  $path'); // backtrack// complete permutation
  if (nums.isEmpty) {
    result.add([...path]);
    print('result  $result'); // backtrack// complete permutation
    return;
  }

  for (int i = 0; i < nums.length; i++) {
    int picked = nums[i];
    path.add(picked);
    List<int> remaining = List.from(nums)..removeAt(i);
    permute(remaining, path, result);
    print('remove before current $path'); // backtrack
    path.removeLast();
    print('remove after current $path'); // backtrack
  }
}

void main() {
  List<int> nums = [1, 2, 3];
  List<List<int>> result = [];
  permute(nums, [], result);
  print(result);
}
