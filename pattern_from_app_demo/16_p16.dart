 //
 // 1 2 3 4 5
 // 2 3 4 5 6
 // 3 4 5 6 7
 // 4 5 6 7 8
 // 5 6 7 8 9

 import 'dart:io';

void main(){

  print("Enter any Number");
  int num = int.parse(stdin.readLineSync().toString());
  int k;
  for(int i =1;i<=num;i++){
    k=i;
    for(int j=1;j<=num;j++){
      stdout.write(" $k ");
      k++;
    }
    print("");
  }

 }