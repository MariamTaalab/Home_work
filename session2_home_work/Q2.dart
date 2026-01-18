/*2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
b) Print a sentence that includes all values using string interpolation.
c) Change weight to a different value and print only the updated one */
void main() {
  //a
  String country = 'Egypt';
  int year = 2026;
  double weight = 60.0;
  bool likesCoding = true;
  //b
  print(
    "Live in : $country, the year is : $year, Weight is : $weight, Likes coding : $likesCoding",
  );
  //c
  weight = 62.0;
  print(weight);
}
