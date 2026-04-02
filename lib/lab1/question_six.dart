import 'dart:io';

void main() {
  int number;
  stdout.write("Enter a integer: ");
  number = stdin.readByteSync();

  if (number < 0) {
    stdout.write("Entered number is positive");
  } else if (number > 0) {
    stdout.write("Entered number is negative");
  } else {
    stdout.write("Entered number is Zero");
  }
}
