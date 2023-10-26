 // 1 3 5 7 9
 // 11 13 15 17 19
 // 21 23 25 27 29
 // 31 33 35 37 39
 // 41 43 45 47 49

 import 'dart:io';

void main(){

  print("Enter Eny Number");

  int num = int.parse(stdin.readLineSync().toString());
  int k=1;

  for(int i=1;i<=num;i++){
    for(int j=1;j<=num;j++){
      stdout.write("$k ");
      k+=2;
    }
    print("");
  }
 }