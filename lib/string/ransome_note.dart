void main() {
  String ransomNote = 'madam';
  String magazine = 'madak I ram ';

  bool result = isRansomNote(magazine, ransomNote);

  print('result : $result');
}

bool isRansomNote(String magazine, String ransomNote) {
  Map<String, int> map = {};

  for (int i = 0; i < magazine.length; i++) {
    map[magazine[i]] = (map[magazine[i]] ?? 0) + 1;
  }

  for (int i = 0; i < ransomNote.length; i++) {
    if (!map.containsKey(ransomNote[i]) || map[ransomNote[i]] == 0) {
      return false;
    }
    map[ransomNote[i]] = (map[ransomNote[i]] ?? 0) - 1;
  }
  return true;
}
