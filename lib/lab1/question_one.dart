import 'dart:io';

void main(){
  int length;
  int breadth;
  bool isSquare;
  stdout.write("Enter the value of length: ");
  length=stdin.readByteSync();
  stdout.write("Enter the value of breadth: ");
  breadth=stdin.readByteSync();
isSquare = length==breadth;
if(isSquare){
    stdout.write("It is a square");
}else{
    stdout.write("It is not a square");
}
}