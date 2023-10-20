// 07. Write a program to print the number in reverse order.

import 'dart:io';

void main(){
  print("Please Enter the Number to Reverse Value Print.");

  int number = int.parse(stdin.readLineSync().toString());
  print("Reverse order $number is ");
  for(int i=number;i>=0;i--){
    print(i);
  }
}