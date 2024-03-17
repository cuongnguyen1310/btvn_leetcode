class Solution {
  bool backspaceCompare(String s, String t) {
    int i = s.length - 1;
    int j = t.length - 1;
    while (true) {
      int backspace = 0;
      while (i >= 0 && (s[i] == '#' || backspace > 0)) {
        backspace += s[i] == '#' ? 1 : -1;
        i--;
      }
      backspace = 0;
      while (j >= 0 && (t[j] == '#' || backspace > 0)) {
        backspace += t[j] == '#' ? 1 : -1;
        j--;
      }
      if (i >= 0 && j >= 0 && s[i] == t[j]) {
        i--;
        j--;
        continue;
      } 
      break;
    }
    return i == -1 && j == -1;
  }
}


void main() {
  Solution solution = Solution();
  var s = "ab#c";
  var t = "ad#c";
  print(solution.backspaceCompare(s, t));
}