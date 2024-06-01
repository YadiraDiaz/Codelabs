import 'dart:math'; // Importamos la biblioteca math para usar pi y pow

class Bicycle {
  int cadence;
  int _speed = 0; // Ahora es privada y se inicializa a 0
  int get speed => _speed; // Getter para speed
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

class Rectangle {
  Point origin;
  int width;
  int height;

  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
}

// Definición de la clase abstracta Shape
abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2); // Crea un círculo con radio 2
    if (type == 'square') return Square(2); // Crea un cuadrado con lado 2
    throw 'Can\'t create $type.'; // Lanza una excepción si el tipo no es válido
  }
  num get area; // Definición del getter area
}

// Definición de la clase Circle que implementa Shape
class Circle implements Shape {
  final num radius; // Radio del círculo
  Circle(this.radius); // Constructor de Circle
  num get area =>
      pi * pow(radius, 2); // Getter para calcular el área del círculo
}

// Definición de la clase Square que implementa Shape
class Square implements Shape {
  final num side; // Lado del cuadrado
  Square(this.side); // Constructor de Square
  num get area => pow(side, 2); // Getter para calcular el área del cuadrado
}

// Implementación de CircleMock que extiende Circle
class CircleMock implements Circle {
  num area = 0; // Variable de área inicializada
  num radius = 0; // Variable de radio inicializada
}

void main() {
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());

  // Crear instancias de Shape utilizando la fábrica
  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);

  // Programación funcional
  final values = [1, 2, 3, 5, 10, 50];
  values.skip(1).take(3).map(scream).forEach(print);
}

// Función para producir una "grito" basado en la longitud
String scream(int length) => "A${'a' * length}h!";
