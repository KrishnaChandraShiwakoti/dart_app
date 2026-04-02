import 'dart:io';

void main() {
  stdout.write("Enter a string : ");
  String input = stdin.readLineSync()!;

  int vowels = 0;
  int consonants = 0;
  int digits = 0;
  int special = 0;

  String vowel = "aeiouAEIOU";

  for (int i = 0; i < input.length; i++) {
    String ch = input[i];

    if (vowel.contains(ch)) {
      vowels++;
    } else if (RegExp(r'[a-zA-Z]').hasMatch(ch)) {
      consonants++;
    } else if (RegExp(r'[0-9]').hasMatch(ch)) {
      digits++;
    } else {
      special++;
    }
  }

  print("Vowels: $vowels");
  print("Consonants: $consonants");
  print("Digits: $digits");
  print("Special characters: $special");
}
