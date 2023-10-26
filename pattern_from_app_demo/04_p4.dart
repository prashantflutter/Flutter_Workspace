 // 5 5 5 5 5
 // 4 4 4 4 4
 // 3 3 3 3 3
 // 2 2 2 2 2
 // 1 1 1 1 1
 import 'dart:io';

void main(){

  print("Enter eny Number");

  int num = int.parse(stdin.readLineSync().toString());

  for(int i=num;i>=1;i--){
    for(int j=num;j>=1;j--){
      stdout.write(" $i ");
    }
    print("");
  }
 }