int firstMissingPositive(List<int> nums) {
  Set<int> seen = {};

  for (int num in nums) {
    if (num > 0) {
      seen.add(num);
    }
  }

  int missing = 1;
  while (seen.contains(missing)) {
    missing++;
  }

  return missing;
}

int firstMissingPositiveWithoutHashing(List<int> nums) {
  int n = nums.length;
  
  // first sort
  for (int i = 0; i < n; i++) {
    while (nums[i] > 0 && nums[i] <= n && nums[nums[i] - 1] != nums[i]) {
      int correctIndex = nums[i] - 1;
      int temp = nums[i];
      nums[i] = nums[correctIndex];
      nums[correctIndex] = temp;
    }
  }
  
  // then check sorting element
  for (int i = 0; i < n; i++) {
    if (nums[i] != i + 1) {
      return i + 1;
    }
  }

  return n + 1;
}
