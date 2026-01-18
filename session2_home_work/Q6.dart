/*6. a) Create List animals with three values.
b) Add a new animal, remove the last one, and update the second element.
c) Print animals.first, animals.last, and animals.length */
void main() {
  //a
  List<String> animals = ['lion', 'cat', 'monkey'];
  //b
  animals.add('dog');
  animals.removeLast();
  animals[1] = 'elephant';
  //c
  print(animals.first);
  print(animals.last);
  print(animals.length);
}
