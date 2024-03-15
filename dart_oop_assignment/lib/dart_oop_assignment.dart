// import 'dart:convert';
// import 'dart:io';

// class Shape {
// }

// class Rectangle extends Shape {
//   double width;
//   double height;

//   Rectangle(this.width, this.height);

//   @override
//   String toString() {
//     return 'Rectangle: width = $width, height = $height';
//   }

//   void printMultiples(int number) {
//     for (int i = 1; i <= 10; i++) {
//       print('$number x $i = ${number * i}');
//     }
//   }
// }

// class Circle extends Shape {
//   double radius;

//   Circle(this.radius);

// }

// abstract class Playable {
//   void play();
// }

// class MusicalInstrument implements Playable {
//   @override
//   void play() {
//     print('Playing the instrument...');
//   }
// }


// // Student class
// class Student {
//   String name;
//   int age;
//   String gradeLevel;

//   Student(this.name, this.age, this.gradeLevel);

//   // Method to print student information
//   void printStudentInfo() {
//     print('Student: Name - $name, Age - $age, Grade Level - $gradeLevel');
//   }
// }

// // Teacher class
// class Teacher {
//   String name;
//   int age;
//   String subject;

//   Teacher(this.name, this.age, this.subject);

//   // Method to print teacher information
//   void printTeacherInfo() {
//     print('Teacher: Name - $name, Age - $age, Subject - $subject');
//   }
// }

// // Class to create student and teacher objects and call their methods
// class School {
//   void printInformation() {
//     // Create student object
//     var student = Student('Alice', 15, '10th');

//     // Create teacher object
//     var teacher = Teacher('Mr. Smith', 35, 'Mathematics');

//     // Call methods to print information
//     student.printStudentInfo();
//     teacher.printTeacherInfo();
//   }
// }
// // 



// void main() {
//   // Initialize instance of a class with data from a file (JSON)
//   final rectangleData = File('rectangle_data.json').readAsStringSync();
//   final jsonData = json.decode(rectangleData);
//   final rectangle = Rectangle(jsonData['width'], jsonData['height']);
//   print(rectangle);

//   rectangle.printMultiples(5);

//   final instrument = MusicalInstrument();
//   instrument.play();

//   var school = School();
//   school.printInformation();
// }
