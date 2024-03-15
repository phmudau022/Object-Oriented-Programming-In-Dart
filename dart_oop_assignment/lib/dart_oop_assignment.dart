import 'dart:convert';
import 'dart:io';

class Shape {
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  String toString() {
    return 'Rectangle: width = $width, height = $height';
  }

  void printMultiples(int number) {
    for (int i = 1; i <= 10; i++) {
      print('$number x $i = ${number * i}');
    }
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

}

abstract class Playable {
  void play();
}

class MusicalInstrument implements Playable {
  @override
  void play() {
    print('Playing the instrument...');
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
}
