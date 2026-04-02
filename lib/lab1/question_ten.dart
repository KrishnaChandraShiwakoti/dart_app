import 'dart:io';

int iterative(int n) {
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

int recursive(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * recursive(n - 1);
  }
}

void main() {
  stdout.write("Enter a number to find its factorial: ");
  int num = stdin.readByteSync();

  int iterativeResult = iterative(num);
  int recursiveResult = recursive(num);

  print("Factorial of $num (Iterative): $iterativeResult");
  print("Factorial of $num (Recursive): $recursiveResult");

  if (iterativeResult == recursiveResult) {
    print("Both methods give the same result ✅");
  } else {
    print("Results do not match ❌");
  }
}
