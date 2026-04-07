class Person {
  // properties
  String name;
  int age;
  bool status;

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
  Person p2 = Person.withName(name: "Krishna");
  Person p3 = Person.withNameAndAge(name: "Krishna", age: 22);

  print(p);
  print(p2);
  print(p3);
}
