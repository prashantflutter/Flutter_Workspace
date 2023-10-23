// Create Below Patterns:
//       1
//      1 2
//     1 2 3
//    1 2 3 4
//   1 2 3 4 5

import 'dart:io';

void main(){
  print("Please Enter Number to Print a Pattern");
  int num ,n1=3;
  num = int.parse(stdin.readLineSync().toString());

  for(int i=1;i<=num;i++){

    // inner loop to print spaces.
    for(int k=0;k!=(num-i);k++){
      stdout.write(' ');
    }

    // inner loop to print numbers column wise.
    for(int j=1;j<=i;j++){
      stdout.write("$j ");
    }

    // printing new line for each row
    print("");
  }


}