// ○ Find area of Triangle Formula : A = 1/2 × b × h


import 'dart:io';

void main(){

  print("Enter the First base value and Second is  height(Perpendicular distance) value to Find Area of Triangle.");

  var a,b,h;
  b = int.parse(stdin.readLineSync().toString());
  h = int.parse(stdin.readLineSync().toString());

  a = 1/2 *(b * h);

  print("Area of Triangle is $a.");

}