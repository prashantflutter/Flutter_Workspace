// ○ Find area of Rectangle Formula : A=wl


import 'dart:io';

void main(){
  print("Enter value of width and length to find area of Rectangle.");
  var a,w,l;
  w = int.parse(stdin.readLineSync().toString());
  l = int.parse(stdin.readLineSync().toString());

  a = w * l;

  print("Area of Rectangle is $a");
}