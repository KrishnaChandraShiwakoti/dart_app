class Person {
  // properties
  String _name;
  int _age;
  bool _status;

  // Getter
  String get name => _name;
  int get age => _age;
  bool get status => _status;

  // setter
  set name(String value) => _name = value;
  set age(int value) => _age = value;
  set status(bool value) => _status = value;

  // constructor
  Person({required String name, required int age, required bool status})
    : _name = name,
      _age = age,
      _status = status;

  @override
  String toString() {
    return "$name is $age years old and is ${status ? 'active' : 'inactive'}";
  }
}

void main() {
  Person p = Person(name: "Krishna", age: 23, status: true);
  print(p);

  // Using getter and setter
  p.name = "Krishna";
  p.age = 22;
  p.status = true;

  print(p);
}
