/*Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions */
void main() {
  int a = 5;
  int b = 4;
  int c = 7;
  bool isAGreaterThanB = a > b;
  bool isCSmallerThanA = c < a;
  bool isSumValid = (a + b) >= c && c < b;
  print("a > b:$isAGreaterThanB");
  print("c < a:$isCSmallerThanA");
  print("(a + b >= c) AND (c > b):$isSumValid");
  if (isSumValid) {
    print("Rule passed");
  } else {
    print("Rule failed");
  }
}
