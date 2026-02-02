/* Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
guess up to 3 times. If they fail, reveal the correct number.*/
import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int randomNumbers = random.nextInt(20) + 1;
  bool guessed = false;
  for (int i = 1; i <= 3; i++) {
    print('Try $i: Enter your guess from 1 to 20');
    int guess = int.parse(stdin.readLineSync()!);
    if (guess == randomNumbers) {
      print("Correct! you guessed the number");
      guessed = true;
      break;
    } else {
      print("Wrong guess!");
    }
  }
  if (!guessed) {
    print(" Sorry! The correct number was :$randomNumbers ");
  }
}
