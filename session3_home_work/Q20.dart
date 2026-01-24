/* Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print*/
void main() {
  int age = 16;
  bool hasParent = true;
  String area = "restricted";
  if (age < 18 && !hasParent) {
    print("Access denied");
    return; //stop the program immediately and don't execute the rest
  }
  switch (area) {
    case "general":
      print("Access allowed");
      break;
    case "restricted":
      if (age >= 18) {
        print("Access allowed");
      } else {
        print("With parent only");
      }
      break;
    default:
      print("Unknown area");
  }
}
