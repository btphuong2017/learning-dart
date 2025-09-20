import 'package:dart_example/dart_example.dart' as dart_example;
import 'package:dart_example/variables_example.dart' as variables_example;
import 'package:dart_example/function_example.dart' as function_example;
import 'package:dart_example/operator_example.dart' as operator_example;
import 'package:dart_example/branch_example.dart' as branch_example;
void main(List<String> arguments) {
  print(arguments);
  print('Hello world: ${dart_example.calculate()}!');
  variables_example.logVariables();
  function_example.executeFunctions();
  operator_example.operatorExample();
  branch_example.branchesExample();
}
