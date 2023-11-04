// ○ Find Area of Cube formula : a = 6a2


import 'dart:io';

void main(){

  print("Enter Value to find a Area of Cube.");
  int a = int.parse(stdin.readLineSync().toString());

  a = 6 * (a * a);
  print("Area of Cube is $a.");
}