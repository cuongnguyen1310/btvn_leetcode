String maxOdd(String s) {
  for (int i = s.length - 1; i >= 0; i--) {
    if (int.parse(s[i]) % 2 != 0) {
      return s.substring(0, i + 1);
    }
  }
  return '';
}

void main() {
  String s = '35427';
  String ans = maxOdd(s);
  print(ans);
}
