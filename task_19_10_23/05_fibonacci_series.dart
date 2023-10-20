//5. Write a program you have to print the Fibonacci series up to user given number

import 'dart:io';

void main(){

  print("Please Enter the Any Number.");
  int number = int.parse(stdin.readLineSync().toString());
  int n1 = 0,n2 =1;

  print("Series is : $n1");
  print("Series is : $n2");

   // already print 0 and 1 that why 2 value subtract to total value entered print
   number-=2;

  for(int i=0;i<=number;i++){
    int n3 = n1 +n2;
    print("Series is : $n3");
    n1 = n2;
    n2 = n3;
  }


}