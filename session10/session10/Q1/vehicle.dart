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
class Vehicle {
  String _name = '';
  double _fuelCapacity = 50;
  double _fuelEfficiency = 10;
  Vehicle(String name, double fuelCapacity, double fuelEfficiency) {
    _name = name;
    if (fuelCapacity > 0) {
      _fuelCapacity = fuelCapacity;
    } else {
      print("Invalid fuel capacity for $_name. Keeping default value 50");
    }
    if (fuelEfficiency > 0) {
      _fuelEfficiency = fuelEfficiency;
    } else {
      print("Invalid fuel efficiency for $_name. Keeping default value 10");
    }
  }
  String get name => _name;
  double get fuelCapacity => _fuelCapacity;
  double get fuelEfficiency => _fuelEfficiency;
  double computeFuel(double distance) {
    return distance / _fuelEfficiency;
  }

  bool canComplete(double distance) {
    return computeFuel(distance) <= _fuelCapacity;
  }
}

class Truck extends Vehicle {
  double _loadWeight = 0;
  Truck(
    String name,
    double fuelCapacity,
    double fuelEfficiency,
    double loadWeight,
  ) : super(name, fuelCapacity, fuelEfficiency) {
    if (loadWeight >= 0) {
      _loadWeight = loadWeight;
    } else {
      _loadWeight = 0;
      print("Error: Invalid load weight for $name. Use default 0");
    }
  }
  @override
  double computeFuel(double distance) {
    return distance / fuelEfficiency * (1 + 0.05 * _loadWeight);
  }
}

class Car extends Vehicle {
  int _passengers = 1;
  Car(String name, double fuelCapacity, double fuelEfficiency, int passengers)
    : super(name, fuelCapacity, fuelEfficiency) {
    if (passengers >= 1) {
      _passengers = passengers;
    } else {
      _passengers = 1;
      print("Error: Invalid number of passengers for $name. Use default 1");
    }
  }
  @override
  double computeFuel(double distance) {
    return distance / fuelEfficiency * (1 + 0.02 * (_passengers - 1));
  }
}
