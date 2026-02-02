/*Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
count how many vowels it has */
import 'dart:io';

void main() {
  print('Enter a word');
  String word = stdin.readLineSync()!;
  String reversedWord = '';
  int vowelCount = 0;
  for (int i = word.length - 1; i >= 0; i--) {
    reversedWord = reversedWord + word[i];
    if ('aeiouAEIOU'.contains(word[i])) {
      vowelCount++;
    }
  }
  print('Reversed word: $reversedWord');
  print('Number of vowels: $vowelCount');
}
