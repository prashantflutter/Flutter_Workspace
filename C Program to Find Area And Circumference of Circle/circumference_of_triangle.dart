// ○ Find circumference of Triangle formula : triangle = a + b + c


import 'dart:io';

void main(){

  print("Enter the Three Value to find circumference of Triangle formula");
  int t,a,b,c;

  a = int.parse(stdin.readLineSync().toString());
  b = int.parse(stdin.readLineSync().toString());
  c = int.parse(stdin.readLineSync().toString());

  t = a + b + c;

  print("circumference of Triangle is $t.");

}