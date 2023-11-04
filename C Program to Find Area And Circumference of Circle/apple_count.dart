// ○ Accept number of students from user. I need to give 5 apples to each
// student. How many apples are required?

import 'dart:io';

void main(){

  print("Enter Number of Students ");

  int apple,number;
  number = int.parse(stdin.readLineSync().toString());

  apple = number * 5;

  print("Total Apples need to give each $number Students is $apple.");
}