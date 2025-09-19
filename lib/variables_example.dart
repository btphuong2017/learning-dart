int number = 10;
int? nullableNumber;
String text = 'Hello, Dart';
String? nullableStr;
bool isLogin = true;
double doubleNumber = 1.42e5;

// var listNumbers = [1, 2, 3];
List<int> listNumbers = [1, 2, 3];

(String, {int a, int b, String c}) records = (
  'String',
  a: 10,
  b: 100,
  c: 'TEST',
);

// var names = <String>{'Michael', 'Eros', 'Two'};
Set<String> names = {'Michael', 'Eros', 'Two'};

final finalText = getFinalText();
const constText = 'Hello, Dart';

String getFinalText() {
  return 'Hello, ${DateTime.now().toUtc()}';
}

void logVariables() {
  print("==================== VARIABLES ====================");
  print('Number: $number');
  print('Nullable number: $nullableNumber');
  print('Text: $text');
  print('Nullable text: $nullableStr');

  print('Final: $finalText');
  print('Const: $constText');

  print('List: ${listNumbers.join(', ')}');
  print('Records: $records');
  // records.$1; // String
  // records.a; //

  // finalText = 'TEST'; // Error
  // constText = 'TEST'; // Error

  print('Sets: $names');
  print("==================== VARIABLES ====================");
}
