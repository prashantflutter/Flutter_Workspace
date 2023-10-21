//05. Write a program you have to print the Fibonacci series up to user given number.

import 'dart:io';

void main(){

  print("Enter the number to print Fibonacci Series");

  int n1 = 0,n2 = 1,num,fib=1;

  num = int.parse(stdin.readLineSync().toString());
  print("Length $num Fibonacci Series is ");
  print(n1);
  print(n2);
  for(int i=2;i<=num-1;i++){
    fib = n1 + n2;
    n1 = n2;
    n2 = fib;
    print(fib);
  }


}