String longestPalindrome(String s) {
  if (s.isEmpty) return "";

  String result = "";

  for (int i = 0; i < s.length; i++) {
    // Odd-length palindrome
    String odd = expandFromCenter(s, i, i);
    print('od $odd');
    // Even-length palindrome
    String even = expandFromCenter(s, i, i + 1);
    print('even $even');

    // Choose the longer one
    String longer = odd.length > even.length ? odd : even;

    // Update result if this is the longest so far
    if (longer.length > result.length) {
      result = longer;
    }
  }

  return result;
}

String expandFromCenter(String s, int left, int right) {
  // Expand while characters match and within bounds
  while (left >= 0 && right < s.length && s[left] == s[right]) {
    left--;
    right++;
  }
  // Return the palindrome substring
  return s.substring(left + 1, right);
}

void main() {
  String str = "babbbbcbad";
  print(longestPalindrome(str)); // Output: "bab" or "aba"
}
