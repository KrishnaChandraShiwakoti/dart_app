import 'dart:io';

class Calculator {
  int num1;
  int num2;

  Calculator({required this.num1, required this.num2});

  int add() {
    return num1 + num2;
  }

  int sub() {
    return num1 - num2;
  }

  double division() {
    return num1 / num2;
  }

  int multiplication() {
    return num1 * num2;
  }
}

class SimpleInterest {
  int principle;
  int rate;
  int time;

  SimpleInterest({
    required this.principle,
    required this.rate,
    required this.time,
  }) {
    print("the simple interest is ${(principle * rate * time) / 100}");
  }
}

void main() {
  Calculator c = Calculator(num1: 10, num2: 20);

  print(
    "Addition :${c.add()} | subtraction : ${c.sub()} | Multiplication: ${c.multiplication()} | Division: ${c.division()}",
  );

  int principle = int.parse(stdin.readLineSync()!);
  int rate = int.parse(stdin.readLineSync()!);
  int time = int.parse(stdin.readLineSync()!);

  SimpleInterest sI = SimpleInterest(
    principle: principle,
    rate: rate,
    time: time,
  );
  print(sI);
}
