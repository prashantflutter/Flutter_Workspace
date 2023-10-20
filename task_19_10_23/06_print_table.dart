// 6. write a program you have to print the table of given number.

import 'dart:io';

void main(){

  print("Please Enter the Number");
  int number = int.parse(stdin.readByteSync().toString());

  print("Table of Number $number :");
  for(int i = 1;i<=10;i++){
    int table = i * number;
    print("$number = $number X $i = $table");
  }


}