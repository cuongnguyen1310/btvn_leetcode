int countDigit(int n) {
  var temp = n, count = 0;
  while (temp != 0) {
    var d = temp % 10;
    temp ~/= 10;
    if (d > 0 && n % d == 0) count++;
  }
  return count;
}

void main() {
  var n = 1248;
  print(countDigit(n));
}
