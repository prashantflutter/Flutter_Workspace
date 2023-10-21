//06. Write a program you have to print the table of given number.

import 'dart:io';

void main(){

  print("Enter the Number of Table you want to Print.");
  int num,table;
  num = int.parse(stdin.readLineSync().toString());
  print("Table of $num is");

  for(int i=1;i<=10;i++){
    table = num * i;
    print("$num X $i = $table");
  }
}