import 'dart:io';

void main() {
  List<int> numbers = [];
  stdout.write('Enter the number of integers: ');
  String count = stdin.readLineSync()!;
  List<String> strings = count.split("");
  for (var i = 0; i < count.length; i++) {
    numbers.add(int.parse(strings[i]));
  }
  int largest = numbers.reduce((a, b) => a > b ? a : b);
  int smallest = numbers.reduce((a, b) => a < b ? a : b);

  double avg = numbers.reduce((a, b) => a + b) / numbers.length;
  print("Largest number: $largest");
  print("Smallest number: $smallest");
  print("Average: $avg");
}
