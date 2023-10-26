 //
 // 2 4 6 8 10
 // 12 14 16 18 20
 // 22 24 26 28 30
 // 32 34 36 38 40
 // 42 44 46 48 50

 import 'dart:io';

void main(){

  print("Enter eny Number");

  int num = int.parse(stdin.readLineSync().toString());
  int k=2;
  for(int i=2;i<=(num+1);i++){
    for(int j=2;j<=(num+1);j++){
      stdout.write(" $k");
      k+=2;
    }
    print("");
  }
  print("========================================");

  int m=0;
  for(int i=0;i<=(num-1);i++){
    for(int j=0;j<=(num-1);j++){
      m+=2;
      stdout.write(" $m ");

    }
    print("");
  }
 }