//
// 1 1 2 1 3 1
// 1 2 2 2 3 2
// 1 3 2 3 3 3
// 1 4 2 4 3 4


import 'dart:io';

void main(){

  print("Enter Eny Number");
  int num =int.parse(stdin.readLineSync().toString());

  for(int i=1;i<=num;i++){
    for(int j=1;j<=num;j++){
      stdout.write(" $i  $j ");
    }
    print("");
  }

}