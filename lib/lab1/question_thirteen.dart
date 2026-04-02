// calculator

import 'dart:io';

void main() {
  stdout.write("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter an operator (+, -, *, /, %): ");
  String operator = stdin.readLineSync()!;

  double? result = calculator(num1, num2, operator);

  if (result != null) {
    print("the result : $result");
  }
}

double? calculator(double num1, double num2, String operator) {
  double? result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error: Division by zero is not allowed ");
      }
      break;
    case '%':
      if (num2 != 0) {
        result = num1 % num2;
      } else {
        print("Error: Modulus by zero is not allowed ");
      }
      break;
    default:
      print("Invalid operator entered ");
  }
  return result;
}
