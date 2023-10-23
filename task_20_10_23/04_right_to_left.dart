// Create Below Patterns:
//          *
//        * *
//      * * *
//    * * * *
//  * * * * *

import 'dart:io';

void main(){
  print("Please Enter Number to Print a Pattern");
  int num ;
  num = int.parse(stdin.readLineSync().toString());

// Method 1 :

  for(int i=1;i<=num;i++){

    // inner loop to print spaces.
    for(int j=0;j!=(num-i);j++){
      stdout.write("  ");
    }
    // inner loop to print stars.
    for(int k=1;k<=i;k++){
      stdout.write("* ");

    }
    // printing new line for each row
    print("");
  }

  print("");


// Method 2 :
  for (int i = num; i >= 1; i--) {

    // inner loop to print spaces.
    for (int j = 1; j < i; j++) {
      stdout.write("  ");
    }

    // inner loop to print stars.
    for (int j = 0; j <= num- i; j++) {
      stdout.write("* ");
    }

    // printing new line for each row
    print(" ");

  }
}

