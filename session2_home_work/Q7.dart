/*7. a) Start with List numbers = [4, 4, 5, 6, 6, 7].
b) Convert it to a Set to remove duplicates and print it.
c) Use add(), remove(), and contains() with the set, printing each result. */

void main() {
  //a
  List<int> numbers = [4, 4, 5, 6, 6, 7];
  //b
  Set<int> numbersSet = numbers.toSet();
  print(numbersSet);
  //c
  numbersSet.add(7);
  print(numbersSet);
  numbersSet.remove(5);
  print(numbersSet);
  print(numbersSet.contains(9));
}
