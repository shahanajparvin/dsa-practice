void main() {
  String s = "AABABBA";
  int k = 1;

  int longest = longestRepeatingSubstring(s, k);
  print("Longest substring after replacement: $longest");
}

int longestRepeatingSubstring(String s, int k) {
  Map<String, int> charCount = {}; // frequency map
  int left = 0; // left boundary of window
  int maxCount = 0; // max frequency in current window
  int maxLength = 0; // result: max length

  for (int right = 0; right < s.length; right++) {
    String currentChar = s[right];

    // Add current character to frequency map
    charCount[currentChar] = (charCount[currentChar] ?? 0) + 1;

    // Incrementally update maxCount
    if (charCount[currentChar]! > maxCount) {
      maxCount = charCount[currentChar]!;
    }

    // Calculate window size
    int window_size = right - left + 1;

    // Shrink window if more replacements needed than allowed
    while (window_size - maxCount > k) {
      String leftChar = s[left];
      charCount[leftChar] = charCount[leftChar]! - 1;
      left++;

      // Update window size after shrinking
      window_size = right - left + 1;
    }

    // Update maxLength if current window is bigger
    if (window_size > maxLength) {
      maxLength = window_size;
    }
  }

  return maxLength;
}
