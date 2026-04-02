import "dart:io";

void main() {
  int digits;
  String digitsToString;
  int reversedDigits;
  stdout.write("ENter the digits to be reversed: ");
  digits = stdin.readByteSync();
  digitsToString = digits.toString();
  digitsToString = digitsToString.split('').reversed.join('');
  reversedDigits = int.parse(digitsToString);
  stdout.write("Your reversed digits are $reversedDigits");
}
