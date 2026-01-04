void main() {
  String s = "ADOBECODEBANC";
  String t = "ABC";

  String result = minWindow(s, t);
  print("Minimum Window Substring: $result");
}

String minWindow(String s, String t) {
  if (s.isEmpty || t.isEmpty) return "";

  // 1️⃣ Build frequency map for t
  Map<String, int> map = {};
  for (int i = 0; i < t.length; i++) {
    map[t[i]] = (map[t[i]] ?? 0) + 1;
  }

  int left = 0;
  int required = t.length;
  int minLen = double.maxFinite.toInt();
  int startIndex = 0;

  // 2️⃣ Expand window
  for (int right = 0; right < s.length; right++) {
    String ch = s[right];

    if (map.containsKey(ch)) {
      if (map[ch]! > 0) {
        required--;
      }
      map[ch] = map[ch]! - 1;
    }

    // 3️⃣ Shrink window when valid
    while (required == 0) {
      if (right - left + 1 < minLen) {
        minLen = right - left + 1;
        startIndex = left;
      }

      String leftChar = s[left];
      if (map.containsKey(leftChar)) {
        map[leftChar] = map[leftChar]! + 1;
        if (map[leftChar]! > 0) {
          required++;
        }
      }
      left++;
    }
  }

  return minLen == double.maxFinite.toInt()
      ? ""
      : s.substring(startIndex, startIndex + minLen);
}
