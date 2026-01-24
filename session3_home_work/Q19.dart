/*Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than
once. */
void main() {
  List<String> names = ["Ali", "Sara", "Ahmed", "Ali"];
  Set<String> uniqueNames = names.toSet();
  Map<String, int> nameCounts = {};
  nameCounts["Ali"] = 2;
  nameCounts["Sara"] = 1;
  nameCounts["Ahmed"] = 1;
  print("Unique names:$uniqueNames");
  print("Name Counts:$nameCounts");
  if (names.length != uniqueNames.length) {
    print("There are duplicate names");
  }
  if (nameCounts["Ali"]! > 1) {
    print("Ali appears more than once");
  }
}
