void main() {
  List<String> words = ["flower", "flow", "sflown"];

  String result = longestCommonPrefix(words);

  print('result : $result');
}

String longestCommonPrefix(List<String> words) {
  String prefix = words[0];

  for (int i = 1; i < words.length; i++) {
    while (!words[i].startsWith(prefix)) {
      prefix = prefix.substring(0, prefix.length - 1);
    }
    if (prefix.isEmpty) {
      return '';
    }
  }
  return prefix;
}
