void main() {
  String haystack = "hello", needle = "ll";

  int result = strStr(haystack, needle);

  print('result : $result');
}

int strStr(String haystack, String needle) {
  int n = haystack.length;
  int m = needle.length;

  for (int i = 0; i <= n - m; i++) {
    int j = 0;
    while (j < m && haystack[i + j] == needle[j]) {
      j++;
    }
    if (j == m) {
      return i;
    }
  }
  return -1;
}

/* Complexity

Time: O(n × m)

Space: O(1)

Interview explanation (short)

I try matching the needle starting at each index of haystack. If all characters match, I return the index. */
