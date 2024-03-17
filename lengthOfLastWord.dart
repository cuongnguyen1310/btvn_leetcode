class Solution {
  int lengthOfLastWord(String s) {
    int i = s.length - 1;

    while (i >= 0 && s[i] == ' ') {
      i--;
    }
    final int lastIndex = i;
    while (i >= 0 && s[i] != ' ') {
      i--;
    }
    return lastIndex - i;
  }
}

void main() {
  Solution solution = Solution();
  var s = "Hello World";
  print(solution.lengthOfLastWord(s));
}