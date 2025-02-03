// ignore: unused_import
import 'dart:io';
// ignore: unused_import
import 'dart:math';

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

void main() {
  // Instance creation
  Person person = Person('Alice', 30);
  person.displayInfo(); // Display: Name: Alice, Age: 30
}
