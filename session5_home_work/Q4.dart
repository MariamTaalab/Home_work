/*Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
numbers, and then calculate the difference between them. */
import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 5; i++) {
    print("Enter the ${i + 1}");
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }
  int largest = numbers[0];
  int smallest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
    if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
  }
  int difference = largest - smallest;
  print('Largest: $largest');
  print('Smallest:$smallest');
  print('Difference: $difference');
}
