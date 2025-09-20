// For loop example
void forLoopExample() {
  print('\nFor Loop Example:');
  for (int i = 0; i < 5; i++) {
    print('i = $i');
  }
}

// While loop example
void whileLoopExample() {
  print('\nWhile Loop Example:');
  int count = 0;
  while (count < 3) {
    print('count = $count');
    count++;
  }
}

// Continue statement example
void continueExample() {
  print('\nContinue Statement Example:');
  for (int i = 0; i < 5; i++) {
    if (i == 2) continue;
    print('i = $i');
  }
}
// If/Else Example
void ifElseExample(int number) {
  print('If/Else Example:');
  if (number > 0) {
    print('$number is positive');
  } else if (number < 0) {
    print('$number is negative');
  } else {
    print('Number is zero');
  }
}

// If with case (if-case pattern matching, Dart 3+)
void ifCaseExample(Object obj) {
  print('\nIf with case Example:');
  if (obj case int n when n > 10) {
    print('Integer greater than 10: $n');
  } else if (obj case String s) {
    print('String value: $s');
  } else {
    print('Other type or int <= 10');
  }
}

// Switch Example
void switchExample(String grade) {
  print('\nSwitch Example:');
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Average');
      break;
    default:
      print('Unknown grade');
  }
}

// Switch rút gọn (expression-bodied switch, Dart 3+)
void switchExpressionExample(int day) {
  print('\nSwitch rút gọn Example:');
  final result = switch (day) {
    1 => 'Monday',
    2 => 'Tuesday',
    3 => 'Wednesday',
    4 => 'Thursday',
    5 => 'Friday',
    6 => 'Saturday',
    7 => 'Sunday',
    _ => 'Invalid day',
  };
  print('Day $day: $result');
}

// Switch with guard (when clause)
void switchWithGuardExample(num value) {
  print('\nSwitch with guard Example:');
  switch (value) {
    case int n when n.isEven:
      print('Even integer: $n');
      break;
    case int n:
      print('Odd integer: $n');
      break;
    case double d when d > 0:
      print('Positive double: $d');
      break;
    default:
      print('Other value');
  }
}

void branchesExample() {
  print("==================== CONTROL FLOW - BRANCHES ====================");
  ifElseExample(5);
  ifElseExample(-2);
  ifElseExample(0);
  ifCaseExample(15);
  ifCaseExample('hello');
  ifCaseExample(7);
  switchExample('A');
  switchExample('C');
  switchExample('X');
  switchExpressionExample(1);
  switchExpressionExample(8);
  switchWithGuardExample(4);
  switchWithGuardExample(7);
  switchWithGuardExample(-3.5);
  forLoopExample();
  whileLoopExample();
  continueExample();
  print("==================== CONTROL FLOW - BRANCHES ====================");
}
