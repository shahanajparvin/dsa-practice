void main() {
  String s = '1234';
  int result = stringToInt(s);

  print('result : $result');
}

int stringToInt(String s) {
  int i = 0;
  int n = s.length;
  int sign = 1;
  int result = 0;

  const int intMax = 2147483647;
  const int intMin = -2147483648; // -2^31

  print(' intMax $intMax');

  print(' intMin $intMin');

  // 1️⃣ Skip leading spaces
  while (i < n && s[i] == ' ') {
    i++;
  }

  // 2️⃣ Handle sign
  if (i < n && (s[i] == '+' || s[i] == '-')) {
    sign = (s[i] == '-') ? -1 : 1;
    i++;
  }

  print(' i $i');
  while (i < n && s.codeUnitAt(i) >= 48 && s.codeUnitAt(i) <= 57) {
    int digit = s.codeUnitAt(i) - 48; //0 ascii value 48
    print(' digit $digit');
    // 4️⃣ Overflow check
    if (result > intMax ~/ 10 || (result == intMax ~/ 10 && digit > 7)) {
      return sign == 1 ? intMax : intMin;
    }

    result = result * 10 + digit;
    print(result);
    i++;
  }

  print(' sign $sign');

  return result * sign;
}
