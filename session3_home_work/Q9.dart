/*Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed. */

void main() {
  List<int> numbers = [1, 5, 2, 3, 9, 2, 4, 2, 3];
  Set<int> uniqueSet = numbers.toSet();
  List<int> uniqueList = uniqueSet.toList();
  if (uniqueList.length < numbers.length) {
    print("Duplicate were removed");
    print("Oringinal length : ${numbers.length}");
    print("unique length : ${uniqueList.length}");
  } else {
    print("No dublicates found");
  }
}
