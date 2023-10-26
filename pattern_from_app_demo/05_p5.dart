// 1 2 3 4 5
// 1 2 3 4 5
// 1 2 3 4 5
// 1 2 3 4 5
// 1 2 3 4 5
import 'dart:io';

void main(){

  print("Enter eny Number");

  int num = int.parse(stdin.readLineSync().toString());

  for(int i=num;i>=1;i--){
    for(int j=num;j>=1;j--){
      stdout.write(" $j ");
    }
    print("");
  }
}