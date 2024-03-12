class Solution {
  int numWaterBottles(int numBottles, int numExchange) {
    return numBottles + (numBottles - 1) ~/ (numExchange - 1);
  }
}

void main() {
  Solution solution = Solution();
  int numBottles = 15;
  int numExchange = 4;
  print(solution.numWaterBottles(numBottles, numExchange));
}
