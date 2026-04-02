import 'dart:io';

//convert temperature in Celsius to Fahrenheit, and vice versa.
void main() {
  int choice;
  int temp;
  double fahrenheit;
  double celsius;
  stdout.write("Choose the conversion type");
  stdout.write("1 : Celsius to Fahrenheit");
  stdout.write("2: Fahrenheit to Celsius");

  stdout.write("Enter your choice (1 or 2): ");
  choice = stdin.readByteSync();
  stdout.write("Enter temperature: ");
  temp = stdin.readByteSync();

  if (choice == 1) {
    fahrenheit = (temp * 9 / 5) + 32;
    print("Temperature in Fahrenheit: $fahrenheit");
  } else if (choice == 2) {
    celsius = (temp - 32) * 5 / 9;
    print("Temperature in Celsius: $celsius");
  } else {
    print("Invalid choice!");
  }
}
