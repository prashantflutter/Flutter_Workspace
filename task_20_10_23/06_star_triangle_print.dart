// Create Below Patterns:
//       *
//      * *
//     * * *
//    * * * *
//   * * * * *

import 'dart:io';

void main() {
  print("Please Enter Number to Print a Pattern");
  int num;
  num = int.parse(stdin.readLineSync().toString());

  // Method 1 :
  for (int i = 1; i <= num; i++) {
    for (int k = 0; k != (num - i); k++) {
      stdout.write(' ');
    }
    // inner loop to print stars.
    for (int j = 1; j <= i; j++) {
      stdout.write("* ");
    }
// printing new line for each row
    print("");
  }

  print("");

  // Method 2 :

  for (int i = 1; i <= num; i++) {
    // inner loop to print spaces.
    for (int k = 0; k != (num - i); k++) {
      stdout.write("  ");
    }

      // inner loop to print stars.
      for (int j = 1; j <= i; j++) {
        stdout.write("* ");
      }
      // inner loop to print stars.
      for (int m = 2; m <= i; m++) {
        stdout.write("* ");
      }

      // printing new line for each row
      print(" ");
    }

}