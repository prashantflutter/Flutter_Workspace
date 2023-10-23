// Create Below Patterns:
//          1
//        2 1
//      3 2 1
//    4 3 2 1
//  5 4 3 2 1

import 'dart:io';

void main(){
  print("Please Enter Number to Print a Pattern");
  int num ;
  num = int.parse(stdin.readLineSync().toString());

  for(int i=1;i<=num;i++){

    // inner loop to print spaces.
    for(int k=0;k!=(num-i);k++){
      stdout.write('  ');
    }
    // inner loop to print numbers reverse column wise.
    for(int j=i;j>=1;j--){
      stdout.write("$j ");
    }

    // printing new line for each row
    print("");
  }

}