import 'dart:io';

//fibonacii series
void main() {
  int n;
  int a = 0;
  int b = 1;
  stdout.write("Enter number for sequence: ");
  n = stdin.readByteSync();
  for (var i = 0; i < n; i++) {
    int c = a + b;
    print(c);
    a = b;
    b = c;
  }
}
