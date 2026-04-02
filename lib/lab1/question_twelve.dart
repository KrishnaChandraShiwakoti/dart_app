// leap year

import 'dart:io';

void main() {
  stdout.write("enter a year : ");
  int year = int.parse(stdin.readLineSync()!);
  leap(year);
}

void leap(int year) {
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print("$year is a leap year ");
  } else {
    print("$year is not a leap year ");
  }
}
