//04. Write a program you have to find the factorial of given number.


import 'dart:io';

void main(){
  print("Please Enter any Number you want to find Factorial Value.");
  int fact = 1;
  int number = int.parse(stdin.readLineSync().toString());

  // Formula to Calculate Factorial : n! = n × (n - 1)!

  for(int i=1;i<=number;i++){
     fact = fact * i;
  }
  print("--------------------------------------\nEntered Number Factorial Value is $fact.\n--------------------------------------");

}