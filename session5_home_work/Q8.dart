/* Q8. Digits Operations - Ask the user for a number (e.g., 528). - Print the sum of its digits and also
print the largest digit*/
import 'dart:io';

void main() {
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);
  int sum = 0;
  int largest = 0;
  int remainingNumber = number;
  while (remainingNumber > 0) {
    int digit = remainingNumber % 10;
    sum = sum + digit;
    if (digit > largest) {
      largest = digit;
    }
    remainingNumber ~/= 10;
  }
  print("Sum of digit: $sum");
  print("Largest digit: $largest");
}
