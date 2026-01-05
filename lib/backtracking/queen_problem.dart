void main() {
  int n = 4;
  Set<String> uniqueSolutions = {}; // store as string to avoid duplicates
  List<int> board = List.filled(n, -1); // board[row] = col

  solve(0, n, board, uniqueSolutions);

  // Convert string solutions back to board format
  List<List<String>> result = uniqueSolutions.map((s) => s.split('|')).toList();

  for (var solution in result) {
    print(solution);
  }
}

void solve(int row, int n, List<int> board, Set<String> solutions) {
  if (row == n) {
    // Build board as list of strings
    List<String> b = List.filled(n, '');
    for (int r = 0; r < n; r++) {
      b[r] = '.' * board[r] + 'Q' + '.' * (n - board[r] - 1);
    }
    // Use '|' as separator to store in set
    solutions.add(b.join('|'));
    return;
  }

  for (int col = 0; col < n; col++) {
    if (isSafe(row, col, board)) {
      board[row] = col; // make choice
      solve(row + 1, n, board, solutions); // recurse
      board[row] = -1; // backtrack
    }
  }
}

bool isSafe(int row, int col, List<int> board) {
  for (int r = 0; r < row; r++) {
    int c = board[r];
    if (c == col || (r - c).abs() == (row - col).abs()) {
      return false;
    }
  }
  return true;
}
