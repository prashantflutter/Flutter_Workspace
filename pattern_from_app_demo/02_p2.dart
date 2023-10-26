 // 1 1 1 1
 // 2 2 2 2
 // 3 3 3 3
 // 4 4 4 4

 import 'dart:io';

void main(){

  print("Enter eny Number");
  int num = int.parse(stdin.readLineSync().toString());
  for(int i=1;i<=num;i++){
    for(int j=1;j<=num;j++){
      stdout.write(" $i ");
    }
    print("");
  }
 }