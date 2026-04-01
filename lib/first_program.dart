void main() {
  print(add(3, 4, 5));
  print(add(4, 6));
  print(simpleInterest(210000, 2, 5.5));
  print(areaOfCircle(7));
  print(calculateAreaOfCircle(radius: 6));
  print(calculateAreaOfCircle(radius: 6, pi: 6.45));
  print(calculateAreaOfCircle(pi: 6.45, radius: 6));
}

//method overloading : same name different signature but does not work in dart
//optional parameter :[]
int add(int first, int second, [int third = 0, int fourth = 0]) {
  return first + second + third + fourth;
}

double simpleInterest(int principle, int time, double rate) {
  return (principle * time * rate) / 100;
}

double areaOfCircle(int radius, [double pi = 3.14]) {
  return pi * radius * radius;
}

//named parameter :{} -> but sabai auto optional hunxa
double calculateAreaOfCircle({required double radius, double pi = 3.14}) {
  return pi * radius * radius;
}
