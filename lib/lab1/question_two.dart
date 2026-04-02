import 'dart:io';

void main() {
  int marks;
  stdout.write("Enter your marks: ");
  marks=stdin.readByteSync();
if(marks<25){
  stdout.write("Your Grade is F ");
}else if(marks>25&&marks<45){
  stdout.write("Your Grade is E ");
}
else if(marks>45&&marks<50){
  stdout.write("Your Grade is D ");
}else if(marks>50&&marks<60){
  stdout.write("Your Grade is C ");
}else if(marks>60&&marks<80){
  stdout.write("Your Grade is B ");
}
else if(marks>80){
  stdout.write("Your Grade is A ");
}
}