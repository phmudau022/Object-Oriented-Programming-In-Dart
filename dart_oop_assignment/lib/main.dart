import 'dart:convert';
import 'dart:io';
import 'shapes.dart'; // Importing shapes.dart

// Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  // Method to print student information
  void printStudentInfo() {
    print('Student: Name - $name, Age - $age, Grade Level - $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  // Method to print teacher information
  void printTeacherInfo() {
    print('Teacher: Name - $name, Age - $age, Subject - $subject');
  }
}

// Class to create student and teacher objects and call their methods
class School {
  void printInformation() {
    // Create student object
    var student = Student('Alice', 15, '10th');

    // Create teacher object
    var teacher = Teacher('Mr. Smith', 35, 'Mathematics');

    // Call methods to print information
    student.printStudentInfo();
    teacher.printTeacherInfo();
  }
}

void main() {
  // Initialize instance of a class with data from a file (JSON)
  final rectangleData = File('rectangle_data.json').readAsStringSync();
  final jsonData = json.decode(rectangleData);
  final rectangle = Rectangle(jsonData['width'], jsonData['height']);
  print(rectangle);

  rectangle.printMultiples(5);

  final instrument = MusicalInstrument();
  instrument.play();

  var school = School();
  school.printInformation();
}
