// Function
int sum(int a, int b) {
  return a + b;
}

String getDescription(name, age) {
  return 'My name is $name, and I\'m $age years old';
}

// Optional Parameter

String getJob({String title = 'Unknown', int? salary}) {
  String salaryDesc = 'Hidden';

  if (salary != null) {
    salaryDesc = '$salary';
  }

  return 'Job: $title. Salary: $salaryDesc';
}

// Optional chaining parament
String say(String from, String msg, [String? device]) {
  return "$from says $msg ${device != null ? 'from $device' : ''}";
}

// First-class function
var printElement = (element) => print(element);

// Mixins
mixin Human {
  void describeHuman() {
    print("$runtimeType is human");
  }
}

// Class & Enum
// ignore: constant_identifier_names
enum Major { Pedagogy, InformationTechnology }

class Student with Human {
  String name;
  int? age;
  Major major;

  Student(this.name, this.age, this.major);

  Student.unlaunched(String name, Major major) : this(name, null, major);

  void describe() {
    print("Student's name is $name. Age is $age. Major is ${major.name}");
  }
}

// Extends
class Member extends Student with Human { // with Human may not need repeating
  String association;

  Member(super.name, super.age, super.major, this.association);

  @override
  void describe() {
    print(
      "Member's name is $name. Age is $age. Major is ${major.name}. Association is $association",
    );
  }
}

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
  var student = Student('Phuong', 18, Major.InformationTechnology);
  student.describe();

  var member = Member('Thi Qua', 18, Major.Pedagogy, 'Badminton Club');
  member.describe();

  student.describeHuman();
  member.describeHuman();
  print("==================== FUNCTION ====================");
}
