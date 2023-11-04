// ○ Find circumference of Rectangle formula : C = 4 * a 


import 'dart:io';

void main(){
  
  print("Enter value of side length to find circumference of Rectangle.");
  var a,c;

  a = int.parse(stdin.readLineSync().toString());
  c = 4 * a;

  print("circumference of Rectangle is $c.");
}