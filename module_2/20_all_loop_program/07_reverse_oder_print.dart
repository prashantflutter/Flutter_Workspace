//07. Write a program to print the number in reverse order.


import 'dart:io';

void main(){

  print("Enter the Number of Reverse Oder you want to Print.");

  int num;
  num = int.parse(stdin.readLineSync().toString());

  /// First Logic ///
  print("First Logic :");
  for(int i = 0;i<=num;i++){
    print(num-i);
  }

  /// Second Logic ///
   print("Second Logic :");
  for(int i=num;i>=0;i--){
    print(i);
  }

}