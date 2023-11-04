// ○ Find circumference of square formula : C = 4 * a 


import 'dart:io';

void main(){
  
  print("Enter the Value to find circumference of square.");

  int a,c;
  a = int.parse(stdin.readLineSync().toString());
  c = 4 * a;

  print("circumference of square is $c.");



}