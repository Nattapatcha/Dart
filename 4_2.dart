class Student {
  late int id;
  late String firstName;
  late String lastName;
  late double gpa;
  Student(this.id, this.firstName, this.lastName, {this.gpa = 0.00});
  void changeName({required String stdFirstname, required String stdLastname}) {
    String tempfirstName = firstName;
    String templastName = lastName;
    firstName = stdFirstname;
    lastName = stdLastname;
    print('$tempfirstName $templastName เปลี่ยนชื่อเป็น $firstName $lastName');
  }

  void showInfo() {
    print('Name :$firstName $lastName');
    print('Gpa  :  $gpa');
  }

  void checkGrade() {
    if (gpa >= 4.0) {
      print('Grade: A');
    } else if (gpa >= 3.0) {
      print('Grade: B');
    } else if (gpa >= 3.5) {
      print('Grade: B+');
    } else if (gpa >= 2.5) {
      print('Grade: C+');
    } else if (gpa >= 2.0) {
      print('Grade: C');
    } else if (gpa >= 1.5) {
      print('Grade: D+');
    } else if (gpa >= 1.0) {
      print('Grade: D');
    } else {
      print('Grade: F');
    }
  }
}

void main() {
  Student student1 = Student(1, 'Swan', 'Dough', gpa: 2.5);
  student1.showInfo();
  student1.checkGrade();

  student1.changeName(stdFirstname: 'Choma', stdLastname: 'EZ');
  student1.showInfo();
  student1.checkGrade();
  print('////////////////////////////////////////////////////////////////');
  Student student2 = Student(1, 'Valk', 'Dough', gpa: 3.00);
  student2.showInfo();
  student2.checkGrade();

  student2.changeName(stdFirstname: 'Joria', stdLastname: 'Dough');
  student2.showInfo();
  student2.checkGrade();
}
