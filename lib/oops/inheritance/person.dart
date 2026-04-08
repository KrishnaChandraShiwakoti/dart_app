class Person {
  // properties
  String name;
  int age;
  Person(this.name, this.age);

  void displayName() {
    print("Name:$name");
  }
}

class Employee extends Person {
  double salary;

  Employee(super.name, super.age, this.salary);

  @override
  String toString() {
    return "Name:$name, Age:$age, Salary: $salary";
  }
}

class Staff extends Person {
  String department;
  String address;

  Staff(super.name, super.age, this.department, this.address);

  @override
  String toString() {
    return "Name:$name, Age:$age, Department: $department, Address:$address";
  }
}

void main() {
  Employee employee = Employee("krishna", 22, 1000.0);
  print(employee);
  employee.displayName();

  Staff staff = Staff("Kripan", 20, "Janitor", "sitapiala");
  print(staff);
  staff.displayName();
}
