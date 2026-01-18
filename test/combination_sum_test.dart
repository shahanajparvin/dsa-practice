import 'package:dsa_practice/backtracking/combination_sum.dart';
import 'package:test/test.dart';

void main() {
  test('Combination Sum should return valid combinations', () {
    List<int> candidates = [2, 3, 6, 7];
    int target = 8;

    final result = getCombinationSum(candidates, target);

    final expected = [
      [2, 2, 2, 2],
      [2, 3, 3],
    ];

    expect(result, equals(expected));
  });
}
