void main() {
  String haystack = "abcabcbb";

  String result = longestSubstringWithoutRepeating(haystack);

  String result1 = longestSubstringRepeating(haystack);

  print('result : $result  $result1');
}

String longestSubstringRepeating(String str) {
  Set<String> set = {};
  int maxlength = 0;
  int left = 0;

  int right = 0;

  int startIndex = 0;

  for (right = 0; right < str.length; right++) {
    while (set.contains(str[right])) {
      set.remove(str[left]);
      left++;
    }
    set.add(str[right]);
    if (right - left + 1 > maxlength) {
      maxlength = right - left + 1;
      startIndex = left;
    }
  }
  String text = str.substring(startIndex, startIndex + maxlength);
  print(text);
  return text;
}

String longestSubstringWithoutRepeating(String s) {
  Set<String> set = {};
  int left = 0;
  int maxLen = 0;
  int startIndex = 0;

  for (int right = 0; right < s.length; right++) {
    while (set.contains(s[right])) {
      set.remove(s[left]);
      left++;
    }

    set.add(s[right]);

    if (right - left + 1 > maxLen) {
      maxLen = right - left + 1;
      startIndex = left;
    }
  }
  print(startIndex);

  return s.substring(startIndex, startIndex + maxLen);
}
