/* Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
Then, check if the average is greater than 50 or not.*/
import 'dart:io';

void main() {
  print('Enter the first number:');
  double number1 = double.parse(stdin.readLineSync()!);
  print('Enter the second number:');
  double number2 = double.parse(stdin.readLineSync()!);
  print('Enter the third number:');
  double number3 = double.parse(stdin.readLineSync()!);
  double sum = number1 + number2 + number3;
  double average = sum / 3;
  print('sum: $sum');
  print('average: $average');
  if (average > 50) {
    print("The average is greater than 50.");
  } else {
    print("The average is not greater than 50");
  }
}
