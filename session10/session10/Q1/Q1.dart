/*Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:-
 Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid → print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type; specialized types must override it with their own
rule.
- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
which vehicles cannot complete the route under their own constraints (you define the constraint per
type). */
import 'vehicle.dart';

void main() {
  List<Vehicle> cars = [
    Truck("Truck1", 200, 5, 10),
    Car("Car1", 50, 12, 4),
    Vehicle("Car2", 50, 15),
  ];
  List<double> distances = [100, 200, 50];
  double total = 0;
  for (int i = 0; i < distances.length; i++) {
    total += distances[i];
  }
  for (int i = 0; i < cars.length; i++) {
    double fuel = cars[i].computeFuel(total);
    print("${cars[i].name} needs ${fuel.toStringAsFixed(2)} liters");
    if (!cars[i].canComplete(total)) {
      print("${cars[i].name} cannot finish the trip");
    }
  }
}
