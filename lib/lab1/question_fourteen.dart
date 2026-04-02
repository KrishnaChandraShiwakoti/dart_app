import 'dart:io';

void main() {
  stdout.write("enter a num : ");
  int num = int.parse(stdin.readLineSync()!);
  multi(num);
}

void multi(int num) {
  for (var i = 1; i <= 10; i++) {
    print("$num x $i = ${num * i}");
  }
}
