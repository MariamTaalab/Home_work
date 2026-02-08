/*Q1 Create a class City with attributes name and population. In main(), create two city objects and
print their details. */
void main() {
  City city1 = City('cairo', 6542000);
  City city2 = City('Dubai', 1478000);
  city1.display();
  city2.display();
}

class City {
  String name;
  int population;
  City(this.name, this.population);
  void display() {
    print("City Name: $name and it's population: $population");
  }
}
