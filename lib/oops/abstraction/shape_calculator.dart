abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
  void printShape() {
    print("Area: ${calculateArea()}, Perimeter: ${calculatePerimeter()}");
  }

  bool isLargerThan(Shape s) {
    return calculateArea() > s.calculateArea();
  }
}

class Circle implements Shape {
  double radius;
  Circle(this.radius);
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14 * radius;
  }

  @override
  bool isLargerThan(Shape s) {
    // TODO: implement isLargerThan
    return calculateArea() > s.calculateArea();
  }

  @override
  void printShape() {
    // TODO: implement printShape
    print("Area: ${calculateArea()}, Perimeter: ${calculatePerimeter()}");
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  double calculatePerimeter() {
    return 2 * (length + width);
  }
}

void main(List<String> args) {
  Shape circle = Circle(8);
  Shape rectangle = Rectangle(20, 10);
  circle.printShape();
  rectangle.printShape();
  print(circle.isLargerThan(rectangle));
  print(rectangle.isLargerThan(circle));
}
