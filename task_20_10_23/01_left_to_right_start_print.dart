// Create Below Patterns:
//  *
//  * *
//  * * *
//  * * * *
//  * * * * *

import 'dart:io';

void main(){
  print("Please Enter Number to Print a Pattern");
  int num ;
  num = int.parse(stdin.readLineSync().toString());

  for(int i=1;i<=num;i++){

    // inner loop to print stars.
    for(int j=1;j<=i;j++){
      stdout.write("* ");
    }

    // printing new line for each row
    print("");
  }

}