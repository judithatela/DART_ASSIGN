class Student {
  final String name;
  final int age;
  final int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printInfo() {
    print("Student Name: $name");
    print("Age: $age");
    print("Grade Level: $gradeLevel");
  }
}

class Teacher {
  final String name;
  final int age;
  final String subject;

  Teacher(this.name, this.age, this.subject);

  void printInfo() {
    print("Teacher Name: $name");
    print("Age: $age");
    print("Subject: $subject");
  }
}

class School {
  void createPeople() {
    Student student1 = Student("Rotich Isaiah", 26, 12);
    Teacher teacher1 = Teacher("Jacob mbugua", 35, "Math");

    student1.printInfo();
    print("\n");
    teacher1.printInfo();
  }
}

void main() {
  School mySchool = School();
  mySchool.createPeople();
}
