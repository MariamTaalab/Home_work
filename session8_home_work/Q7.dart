/*Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list */
import 'dart:io';

void main() {
  List<int> numbers = [];
  print("How many numbers?");
  int count = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < count; i++) {
    print("Enter number ${i + 1}: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  int largest = numbers[0];
  int smallest = numbers[0];
  int sum = 0;
  int even = 0;
  int odd = 0;
  for (int n in numbers) {
    if (n > largest) {
      largest = n;
    }
    if (n < smallest) {
      smallest = n;
    }
    sum = sum + n;
    if (n % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }
  double average = sum / numbers.length;

  print("Largest number: $largest");
  print("Smallest number: $smallest");
  print("Difference: ${largest - smallest}");
  print("Average:$average");
  print("Numbers above average:");
  for (int n in numbers) {
    if (n > average) {
      print(n);
    }
  }
  print("Even numbers count: $even");
  print("Odd numbers count: $odd");
}
