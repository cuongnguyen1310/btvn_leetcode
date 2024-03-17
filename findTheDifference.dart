class Solution {
  String findTheDifference(String s, String t) {
    int sXors = s.runes.fold(0, (prev, element) => prev ^ element);
    int tXors = t.runes.fold(0, (prev, element) => prev ^ element);
    int difference = sXors ^ tXors;
    return String.fromCharCode(difference);
  }
}

void main() {
  Solution solution = Solution();
  var s = "abcd";
  var t = "abcde";
  print(solution.findTheDifference(s, t));
}