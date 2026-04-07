class Person {
  // properties
  final String name;
  final int age;
  final bool status;

  // final is runtime while const is compile time

  // constructor
  Person({required this.name, required this.age, required this.status});
  //Named Constructor with only name (default : age=0,status = false)
  Person.withName({required this.name}) : age = 0, status = false;

  //Named Constructor with only name and age(default :status = false)

  Person.withNameAndAge({required this.name, required this.age})
    : status = false;

  @override
  String toString() {
    return "$name is $age years old and is ${status ? 'active' : 'inactive'}";
  }
}

void main() {
  Person p = Person(name: "Krishna", age: 23, status: true);
  print(p);

  Person p2 = Person(name: "Unknown", age: 0, status: false);
  print(p2);
}
