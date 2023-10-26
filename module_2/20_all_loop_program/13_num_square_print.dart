// Create Below Patterns:
//    1
//    4 4
//    9 9 9
//    16 16 16 16
//    25 25 25 25 25

import 'dart:io';

void main(){
  print("Please Enter Number to Print a Pattern");
  int num ;
  num = int.parse(stdin.readLineSync().toString());

  for(int i=1;i<=num;i++){

    for(int j=1;j<=i;j++){
      stdout.write("${i*i} ");
    }

    print('');
  }
}