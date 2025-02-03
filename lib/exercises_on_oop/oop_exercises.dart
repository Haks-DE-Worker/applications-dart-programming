// ignore: unused_import
import 'dart:io';
// ignore: unused_import
import 'dart:math';

void main() {
  // Instance creation
  Person person = Person('Alice', 30);
  person.displayInfo(); // Display: Name: Alice, Age: 30
}

// Class Person definition
class Person {
  // Class properties
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // A class method
  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

class Students extends Person {
  // class properties
  int note;

  // Constructor
  Students(String name, int age, this.note) : super(name, age);

  // A class method
  void dispalyNote() {
    print('Name: $name, Age: $age, Note: $note');
  }
}

abstract class Forms {
  // Abstract method
  void airDeternine();
}

// class Circle and Rectangle who implements the abstract class Forms
class Circle implements Forms {
  // class properties
  double radius;

  // Constructor
  Circle(this.radius);

  // Implementation of the abstract method
  @override
  void airDeternine() {
    print('Area of the circle: ${3.14 * radius * radius}');
  }
}

// class Rectangle
class Rectangle implements Forms {
  // class properties
  double length;
  double width;

  // Constructor
  Rectangle(this.length, this.width);

  // Implementation of the abstract method
  @override
  void airDeternine() {
    print('Area of the rectangle: ${length * width}');
  }
}
