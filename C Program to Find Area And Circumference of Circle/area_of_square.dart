// ○ Find Area of Square formula : a = a2

import 'dart:io';
void main(){
  print("Enter Value of you want to Find Area of Square.");
  int a = int.parse(stdin.readLineSync().toString());

  a = a * a;

  print("Area of Square is $a.");
}