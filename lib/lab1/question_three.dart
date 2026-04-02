import 'dart:io';

void main(List<String> args) {
  int classesHeld;
  int classesAttended;
  double attendance;
  stdout.write("Enter the number of classes held: ");
  classesHeld = stdin.readByteSync();
  stdout.write("Enter the number of classes attended: ");
  classesAttended = stdin.readByteSync();
  attendance = (classesAttended / classesHeld) * 100;
  if (attendance >= 75) {
    stdout.write("You are allowed to attend the exam");
  }
}
