/* Create a program with the scores [10, 0, 20, 30]. Ignore the zeros, add the other numbers together,
and print the total*/
void main() {
  List<int> Scores = [10, 0, 20, 30];
  int total = 0;
  for (int score in Scores) {
    if (score != 0) {
      total = total + score;
    }
  }
  print("Total $total");
}
