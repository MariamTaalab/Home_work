/*Model shapes to compute total paintable area and cost.
Requirements:- Provide a general shape type (concrete class) with an area() method that can be overridden.
- Implement at least three concrete shape types with encapsulated dimensions and validated
constructors (invalid → print; keep previous).
- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
code).- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
cost to 2 decimals. */
class Shape {
  double area() => 0;
}

class Circle extends Shape {
  double _radius = 0;
  Circle(double radius) {
    if (radius > 0) {
      _radius = radius;
    } else {
      print("Invalod initial radius: $radius. Setting to 0");
    }
  }
  double get redius => _radius;
  set redius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print("Invalid radius: $value. keeping previous value $_radius");
    }
  }

  @override
  double area() => 3.14 * _radius * _radius;
}

class Rectangle extends Shape {
  double _width = 0;
  double _height = 0;
  Rectangle(double width, double height) {
    if (width > 0) {
      _width = width;
    } else {
      print("Invalid width");
    }
    if (height > 0) {
      _height = height;
    } else {
      print("Invalid height");
    }
  }
  double get width => _width;
  double get height => _height;
  set width(double value) {
    if (value > 0) {
      _width = value;
    } else {
      print("Invalid width: $value. keeping previous value $_width");
    }
  }

  set height(double value) {
    if (value > 0) {
      _height = value;
    } else {
      print("Invalid height: $value. keeping previous value $_height");
    }
  }

  @override
  double area() => _width * _height;
}

class Triangle extends Shape {
  double _base = 0;
  double _height = 0;
  Triangle(double base, double height) {
    if (base > 0) {
      _base = base;
    } else {
      print("Invalid base");
    }
    if (height > 0) {
      _height = height;
    } else {
      print("Invalid height");
    }
  }
  double get base => _base;
  double get height => _height;
  set base(double value) {
    if (value > 0) {
      _base = value;
    } else {
      print("Invalid base: $value. keeping previous value $_base");
    }
  }

  set height(double value) {
    if (value > 0) {
      _height = value;
    } else {
      print("Invalid height: $value. keeping previous value $_height");
    }
  }

  @override
  double area() => 0.5 * _base * _height;
}

double computeCost(double area) {
  if (area <= 50) {
    return area * 1.50;
  } else if (area <= 150) {
    return (50 * 1.50) + (area - 50) * 1.25;
  } else {
    return (50 * 1.50) + (100 * 1.25) + (area - 150) * 1.00;
  }
}
