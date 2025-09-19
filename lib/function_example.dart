int sum(int a, int b) {
  return a + b;
}

String getDescription(name, age) {
  return 'My name is $name, and I\'m $age years old';
}

String getJob({String title = 'Unknown', int? salary}) {
  String salaryDesc = 'Hidden';

  if (salary != null) {
    salaryDesc = '$salary';
  }

  return 'Job: $title. Salary: $salaryDesc';
}

String say(String from, String msg, [String? device]) {
  return "$from says $msg ${device != null ? 'from $device' : ''}";
}

var printElement = (element) => print(element);

void executeFunctions() {
  print("==================== FUNCTION ====================");
  print('Sum: ${sum(10, 20)}');
  print('Description: ${getDescription('Phuong', '18')}');
  print('Job: ${getJob(title: "Frontend Developer", salary: 10000000)}');
  print('Job: ${getJob(salary: null, title: "Backend Developer")}');
  print('Job: ${getJob()}');
  print('Say: ${say('Eros', 'Hello', 'Phone')}');
  print('Say: ${say('Derek', 'Goodbye')}');
  List<int> list = [1, 2, 3];
  list.forEach(printElement);
  print("==================== FUNCTION ====================");
}
