void main() {
  String s = "catsanddog";
  List<String> wordDict = ["cat", "cats", "and", "sand", "dog"];

  List<String> result = [];

  // Call separate backtracking function
  wordBreak(s: s, words: wordDict, currents: [], start: 0, result: result);

  print(result);
}

wordBreak({
  required String s,
  required List<String> words,
  required List<String> currents,
  required int start,
  required List<String> result,
}) {
  if (start == s.length) {
    result.add(currents.join(' '));
    return;
  }

  for (String word in words) {
    if (s.startsWith(word, start)) {
      currents.add(word);
      wordBreak(
        s: s,
        words: words,
        currents: currents,
        start: start + word.length,
        result: result,
      );
      currents.removeLast();
    }
  }
}
