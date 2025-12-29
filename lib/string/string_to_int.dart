int stringToInt(String s) {
  int i = 0;
  int n = s.length;
  int sign = 1;
  int result = 0;

  const int INT_MAX = 2 ^ 31 - 1;
  const int INT_MIN = -2 ^ 31;

  // 1️⃣ Skip leading spaces
  while (i < n && s[i] == ' ') {
    i++;
  }

  // 2️⃣ Handle sign
  if (i < n && (s[i] == '+' || s[i] == '-')) {
    sign = (s[i] == '-') ? -1 : 1;
    i++;
  }

  // 3️⃣ Convert digits
  int code = s.codeUnitAt(i);
  while (i < n && code >= 48 && code <= 57) {
    int digit = s.codeUnitAt(i) - 48; //0 ascii value 48

    // 4️⃣ Overflow check
    if (result > INT_MAX ~/ 10 || (result == INT_MAX ~/ 10 && digit > 7)) {
      return sign == 1 ? INT_MAX : INT_MIN;
    }

    result = result * 10 + digit;
    i++;
  }

  return result * sign;
}
