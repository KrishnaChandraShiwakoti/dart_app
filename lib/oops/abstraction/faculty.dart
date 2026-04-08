abstract class Faculty {
  String name;
  int age;
  String address;

  Faculty(this.name, this.age, this.address);

  void displayDetails() {
    print("Name:$name, Age:$age, Address:$address");
  }

  double calculateYearlySalary();
}

class FullTimeFaculty extends Faculty {
  double monthlySalary;

  FullTimeFaculty(super.name, super.age, super.address, this.monthlySalary);

  @override
  double calculateYearlySalary() {
    return monthlySalary * 12;
  }
}

class PartTimeFaculty extends Faculty {
  double hourlySalary;
  int hoursWorkedWeekly;

  PartTimeFaculty(
    super.name,
    super.age,
    super.address,
    this.hourlySalary,
    this.hoursWorkedWeekly,
  );

  double calculateWeeklySalary() {
    return hourlySalary * hoursWorkedWeekly;
  }

  @override
  double calculateYearlySalary() {
    return calculateWeeklySalary() * 52;
  }
}

void main(List<String> args) {
  Faculty ft = FullTimeFaculty("Krishna", 22, "Ktm", 20000);
  Faculty pt = PartTimeFaculty("Krishna", 22, "Ktm", 45, 50);

  print("Yearly Salary of Fulltime: ${ft.calculateYearlySalary()}");
  print("Yearly Salary of PartTime: ${pt.calculateYearlySalary()}");
}
