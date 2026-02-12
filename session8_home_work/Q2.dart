/*Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names and years less than 1886 (first car invention).
- Add getters for both.
- In main(), demonstrate creating two car object (one valid, one invalid input).*/
import 'Q2car.dart';

void main() {
  Car car1 = Car();
  car1.brand = 'Toyota';
  car1.year = 2010;
  print("Car1: ${car1.brand}, ${car1.year}");

  Car car2 = Car();
  car2.brand = '';
  car2.year = 1400;
  print("Car2: ${car2.brand}, ${car2.year}");
}
