void main() {
  List<int> candidates = [2, 3, 6, 2, 7, 1];
  int target = 8;

  List<List<int>> result = [];

  candidates.sort();

  combinationSum(
    nums: candidates,
    target: target,
    currents: [],
    index: 0,
    result: result,
  );

  print(result);
}

combinationSum({
  required List<int> nums,
  required int target,
  required List<int> currents,
  required index,
  required List<List<int>> result,
}) {
  if (target == 0) {
    result.add(List.from(currents));
    return;
  } else if (target < 0) {
    return;
  }

  for (int i = index; i < nums.length; i++) {
    if (i > index && nums[i] == nums[i - 1]) {
      continue;
    }

    currents.add(nums[i]);
    combinationSum(
      nums: nums,
      target: target - nums[i],
      currents: currents,
      index: i,
      result: result,
    );
    currents.removeLast();
  }
}
