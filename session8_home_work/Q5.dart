/*Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time. */
import 'Q5book.dart';

void main() {
  Book book = Book();
  book.title = "Dart";
  book.pages = 150;
  print("Book title: ${book.title}");
  print("Estimated readin time: ${book.readingTime}");
  book.title = '';
  book.pages = 0;
}
