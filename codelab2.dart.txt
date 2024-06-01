// Imports necesarios
import 'dart:math';

// Clase Bicycle con propiedades y métodos
class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;

  Bicycle(this.cadence, this.gear);

  int get speed => _speed;

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

// Implementación de main
void main() {
  // Test de Collection literals
  var collectionErrors = <String>[];
  var aListOfStrings = ['one', 'two', 'three'];
  var aSetOfInts = {1, 2, 3};
  var aMapOfStringsToInts = {'one': 1, 'two': 2, 'three': 3};
  var anEmptyListOfDouble = <double>[];
  var anEmptySetOfString = <String>{};

  if (aListOfStrings.length != 3) {
    collectionErrors.add('Expected a list of length 3');
  }
  if (aSetOfInts.length != 3) {
    collectionErrors.add('Expected a set of length 3');
  }
  if (aMapOfStringsToInts.length != 3) {
    collectionErrors.add('Expected a map of length 3');
  }
  if (anEmptyListOfDouble.isNotEmpty) {
    collectionErrors.add('Expected an empty list');
  }
  if (anEmptySetOfString.isNotEmpty) {
    collectionErrors.add('Expected an empty set');
  }

  if (collectionErrors.isEmpty) {
    print('Collection literals test: Success!');
  } else {
    collectionErrors.forEach(print);
  }

  // Test de Arrow syntax
  bool isPositive(int number) => number >= 0;
  var arrowErrors = <String>[];

  if (!isPositive(42)) {
    arrowErrors.add('Expected 42 to be positive');
  }
  if (isPositive(-42)) {
    arrowErrors.add('Expected -42 to be negative');
  }

  if (arrowErrors.isEmpty) {
    print('Arrow syntax test: Success!');
  } else {
    arrowErrors.forEach(print);
  }

  // Test de Cascade syntax
  var paint = Paint()
    ..color = 'black'
    ..strokeCap = 'round'
    ..strokeWidth = 5.0;
  var cascadeErrors = <String>[];

  if (paint.color != 'black') {
    cascadeErrors.add('Expected color to be black');
  }
  if (paint.strokeCap != 'round') {
    cascadeErrors.add('Expected strokeCap to be round');
  }
  if (paint.strokeWidth != 5.0) {
    cascadeErrors.add('Expected strokeWidth to be 5.0');
  }

  if (cascadeErrors.isEmpty) {
    print('Cascade syntax test: Success!');
  } else {
    cascadeErrors.forEach(print);
  }

  // Test de Getters and setters
  var rectangle = Rectangle(2, 3, 4, 5);
  rectangle.right = 12;
  var getterSetterErrors = <String>[];

  if (rectangle.left != 8) {
    getterSetterErrors.add('Expected left to be 8');
  }

  if (getterSetterErrors.isEmpty) {
    print('Getters and setters test: Success!');
  } else {
    getterSetterErrors.forEach(print);
  }

  // Test de Initializer lists
  try {
    var result = FirstTwoLetters('My String');
    if (result.letterOne != 'M') {
      print('Expected M, got ${result.letterOne}');
    }
    if (result.letterTwo != 'y') {
      print('Expected y, got ${result.letterTwo}');
    }
  } catch (e) {
    print('Failed Initializer lists test');
  }

  // Test de Named constructors
  try {
    var black = Color.black();
    if (black.red != 0 || black.green != 0 || black.blue != 0) {
      print(
          'Expected (0, 0, 0), got (${black.red}, ${black.green}, ${black.blue})');
    }
  } catch (e) {
    print('Failed Named constructors test');
  }

  // Test de Factory constructors
  try {
    var single = IntegerHolder.fromList([1]);
    var double = IntegerHolder.fromList([1, 2]);
    var triple = IntegerHolder.fromList([1, 2, 3]);
    print('Factory constructors test: Success!');
  } catch (e) {
    print('Failed Factory constructors test');
  }

  // Test de Redirecting constructors
  try {
    var black = Color.black();
    print('Redirecting constructors test: Success!');
  } catch (e) {
    print('Failed Redirecting constructors test');
  }

  // Test de Const constructors
  try {
    const recipe = Recipe(['1 egg', 'Pat of butter', 'Pinch salt'], 120, 200);
    print('Const constructors test: Success!');
  } catch (e) {
    print('Failed Const constructors test');
  }
}

// Clase Paint con Cascade syntax
class Paint {
  String color = '';
  String strokeCap = '';
  double strokeWidth = 0.0;
}

// Clase Rectangle con Getters and setters
class Rectangle {
  double left;
  double top;
  double width;
  double height;

  Rectangle(this.left, this.top, this.width, this.height);

  double get right => left + width;
  set right(double value) => left = value - width;

  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

// Clase FirstTwoLetters con Initializer lists
class FirstTwoLetters {
  final String letterOne;
  final String letterTwo;

  FirstTwoLetters(String word)
      : assert(word.length >= 2),
        letterOne = word[0],
        letterTwo = word[1];
}

// Clase Color con Named constructors y Redirecting constructors
class Color {
  int red;
  int green;
  int blue;

  Color(this.red, this.green, this.blue);

  Color.black() : this(0, 0, 0);
}

// Clase IntegerHolder con Factory constructors
class IntegerHolder {
  IntegerHolder();

  factory IntegerHolder.fromList(List<int> list) {
    if (list.length == 1) return IntegerSingle(list[0]);
    if (list.length == 2) return IntegerDouble(list[0], list[1]);
    if (list.length == 3) return IntegerTriple(list[0], list[1], list[2]);
    throw Error();
  }
}

class IntegerSingle extends IntegerHolder {
  final int a;
  IntegerSingle(this.a);
}

class IntegerDouble extends IntegerHolder {
  final int a;
  final int b;
  IntegerDouble(this.a, this.b);
}

class IntegerTriple extends IntegerHolder {
  final int a;
  final int b;
  final int c;
  IntegerTriple(this.a, this.b, this.c);
}

// Clase Recipe con Const constructors
class Recipe {
  final List<String> ingredients;
  final int calories;
  final double milligramsOfSodium;

  const Recipe(this.ingredients, this.calories, this.milligramsOfSodium);
}
