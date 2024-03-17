class Solution {
  int numJewelsInStones(String jewels, String stones) {
    Set<String> jewelsSet = jewels.split("").toSet();
    return stones.split("").where((stone) => jewelsSet.contains(stone)).length;
  }
}


void main() {
  Solution solution = Solution();
  var jewels = "aA";
  var stones = "aAAbbbb";
  print(solution.numJewelsInStones(jewels, stones));
}