/*9. a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double. */

void main() {
  //a
  List<Map<String, dynamic>> Students = [
    {'name': 'Mariam', 'grade': 90},
    {'name': 'Ali', 'grade': 95},
  ];
  print(Students[1]['grade']);
  //c
  double average = (Students[0]['grade'] + Students[1]['grade']) / 2;
  print(average);
}
