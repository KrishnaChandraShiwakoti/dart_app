class Faculty {
  String name;
  int age;
  String address;

  Faculty(this.name, this.age, this.address);

  void displayDetails() {
    print("Name:$name, Age:$age, Address:$address");
  }
}

class FullTimeFaculty extends Faculty {
  double monthlySalary;

  FullTimeFaculty(super.name, super.age, super.address, this.monthlySalary);

  void calculateYearlySalary() {
    print("Yearly salary :${monthlySalary * 12}");
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

  void calculateWeeklySalary() {
    print("Weekly salary :${hourlySalary * hoursWorkedWeekly}");
  }

  void calculateYearlySalary() {
    print("Yearly Salary: ${(hourlySalary * hourlySalary) * 52}");
  }
}

void main(List<String> args) {
  FullTimeFaculty fullTime = FullTimeFaculty("Krishna", 22, "Ktm", 20000);
  fullTime.calculateYearlySalary();
  PartTimeFaculty partTime = PartTimeFaculty("Krishna", 22, "ktm", 20, 50);
  partTime.calculateWeeklySalary();
  partTime.calculateYearlySalary();
}
