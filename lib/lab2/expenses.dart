// question3

import 'dart:io';

void main(List<String> args) {
  print("Enter number of expenses");
  int n = int.parse(stdin.readLineSync()!);
  List<double> expenses = [];

  for (var i = 0; i < n; i++) {
    print("Enter expense ${i + 1}: ");
    double amount = double.parse(stdin.readLineSync()!);
    expenses.add(amount);
  }
  double total = expenses.reduce((a, b) => a + b);
  print("Your total expense : $total");
}
