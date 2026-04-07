class Students {
  int _marks;

  // getter
  int get marks => _marks;
  set marks(int value) => _marks = value;

  Students({required int marks}) : _marks = marks {
    if (marks <= 0 || marks >= 100) {
      print("Invalid marks must be between 0 and 100");
    } else {
      print("marks set to be $marks");
    }
  }
}

void main() {
  Students s1 = Students(marks: 101);
}
