/* Q6. Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains. 
Then print the shortest word and the longest word from the sentence*/
import 'dart:io';

void main() {
  print('Enter a sentence:');
  String Sentence = stdin.readLineSync()!;
  List<String> words = Sentence.split(" ");
  String longest = words[0];
  String shortest = words[0];
  for (String word in words) {
    if (word.length < shortest.length) {
      shortest = word;
    }
    if (word.length > longest.length) {
      longest = word;
    }
  }
  print("Number of words: ${words.length}");
  print("Shortest word: $shortest");
  print("Longest word: $longest");
}
