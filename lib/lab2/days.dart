// question 4

import 'dart:io';

void main(List<String> args) {
  List<String> days = [];
  for (var i = 0; i < 7; i++) {
    print("Enter the ${i + 1} name of the days in the week :");
    String day = stdin.readLineSync()!;
    days.add(day);
  }
  for (var day in days) {
    print(day);
  }
}
