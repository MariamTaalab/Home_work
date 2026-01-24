/*Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade. */
void main() {
  int mark = 85;
  String grade;
  if (mark >= 90) {
    grade = "A";
  } else if (mark >= 75) {
    grade = "B";
  } else if (mark >= 50) {
    grade = "C";
  } else {
    grade = "D";
  }
  print("Grade $grade");

  switch (grade) {
    case "A":
      print("Excellent keep going");
      break;
    case "B":
      print("Good Job you can do more better");
      break;
    case "C":
      print("Not bad, but there is more better");
      break;
    case "D":
      print("You need to work harder");
      break;
    default:
      print("Invalid grade");
  }
}
