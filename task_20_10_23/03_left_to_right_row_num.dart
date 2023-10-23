// Create Below Patterns:
//  1
//  2 2
//  3 3 3
//  4 4 4 4
//  5 5 5 5 5

import 'dart:io';

void main(){
  print("Please Enter Number to Print a Pattern");
  int num ;
  num = int.parse(stdin.readLineSync().toString());

  for(int i=1;i<=num;i++){

    // inner loop to print numbers row wise.
    for(int j=1;j<=i;j++){
      stdout.write("$i ");
    }

    // printing new line for each row
    print("");
  }

}