// Example class for cascade notation
class Person {
  String name = '';
  int age = 0;
  void greet() => print('Hello, my name is $name and I am $age years old.');
}

// Example classes for type test operators
class Animal {}

class Dog extends Animal {
  void bark() => print('Woof!');
}

void arithmeticOperatorsExample() {
  int a = 10;
  int b = 3;
  print('a = $a, b = $b');
  print('a + b = ${a + b}'); // Addition
  print('a - b = ${a - b}'); // Subtraction
  print('a * b = ${a * b}'); // Multiplication
  print('a / b = ${a / b}'); // Division (double)
  print('a ~/ b = ${a ~/ b}'); // Integer Division
  print('a % b = ${a % b}'); // Modulo
}

void incrementDecrementOperatorsExample() {
  int x = 5;
  print('\nIncrement and Decrement Operators:');
  print('Initial x = 5');
  print('x++ = ${x++}');
  print('After x++, x = $x');
  print('++x = ${++x}');
  print('After ++x, x = $x');
  print('x-- = ${x--}');
  print('After x--, x = $x');
  print('--x = ${--x}');
  print('After --x, x = $x');
}

void equalityRelationalOperatorsExample() {
  int m = 7;
  int n = 10;
  print('\nEquality and Relational Operators:');
  print('m = $m, n = $n');
  print('m == n: ${m == n}');
  print('m != n: ${m != n}');
  print('m > n: ${m > n}');
  print('m < n: ${m < n}');
  print('m >= n: ${m >= n}');
  print('m <= n: ${m <= n}');
}

void typeTestOperatorsExample() {
  print('\nType Test Operators:');
  Animal animal = Dog();
  print('animal is Dog: ${animal is Dog}');
  print('animal is! String: ${animal is! String}');
  if (animal is Dog) {
    (animal as Dog).bark();
  }
}

void assignmentOperatorsExample() {
  print('\nAssignment Operators:');
  int y = 5;
  print('Initial y = $y');
  y = 10;
  print('y = 10 -> y = $y');
  y += 2;
  print('y += 2 -> y = $y');
  y -= 3;
  print('y -= 3 -> y = $y');
  y *= 4;
  print('y *= 4 -> y = $y');
  y %= 3;
  print('y %= 3 -> y = $y');
}

void logicalOperatorsExample() {
  print('\nLogical Operators:');
  bool p = true;
  bool q = false;
  print('p = $p, q = $q');
  print('p && q: ${p && q}');
  print('p || q: ${p || q}');
  print('!p: ${!p}');
  print('!q: ${!q}');
}

void cascadeNotationExample() {
  print('\nCascade Notation:');
  var person = Person()
    ..name = 'Alice'
    ..age = 30
    ..greet();
}

void spreadOperatorsExample() {
  print('\nSpread Operators:');
  var list1 = [1, 2, 3];
  var list2 = [4, 5, 6];
  var combined = [...list1, ...list2];
  print('list1: $list1');
  print('list2: $list2');
  print('combined: $combined');
  var nullableList = null;
  var safeCombined = [...list1, ...?nullableList, 7];
  print('safeCombined (with null-aware spread): $safeCombined');
}

void operatorExample() {
  print("==================== OPERATORS ====================");
  arithmeticOperatorsExample();
  incrementDecrementOperatorsExample();
  equalityRelationalOperatorsExample();
  typeTestOperatorsExample();
  assignmentOperatorsExample();
  logicalOperatorsExample();
  cascadeNotationExample();
  spreadOperatorsExample();
  print("==================== OPERATORS ====================");
}